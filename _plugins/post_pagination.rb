module Jekyll
  class PostPagination < Generator
    safe true

    def generate(site)
      site.pages.dup.each do |page|
        paginate(site, page) if PostPager.pagination_enabled?(site.config, page)
      end
    end

    def paginate(site, page)
      all_posts = site.site_payload['site']['posts']
      pages = PostPager.calculate_pages(all_posts, site.config['paginate_per_page'].to_i)
      (2..pages).each do |num_page|
        dir = File.join(page.dir, paginate_path(site, num_page))
        newpage = PostPage.new(site, site.source, dir, page.name, site.config['posts_paginate_layout'], num_page)
        newpage.pager = PostPager.new(site.config, num_page, all_posts, pages)
        site.pages << newpage
      end
    end

    private
    def paginate_path(site, num_page)
      format = site.config['posts_paginate_path']
      format.sub(':num', num_page.to_s)
    end
  end

  class PostPager
    attr_reader :page, :per_page, :posts, :total_posts, :total_pages, :previous_page, :next_page

    def self.calculate_pages(all_posts, per_page)
      (all_posts.size.to_f / per_page.to_i).ceil
    end

    def self.pagination_enabled?(config, page)
      page.data && page.data['paginate'] == true && !config['paginate_per_page'].nil?
    end

    def initialize(config, page, all_posts, num_pages = nil)
      @page = page
      @per_page = config['paginate_per_page'].to_i
      @total_pages = num_pages || PostPager.calculate_pages(all_posts, @per_page)

      if @page > @total_pages
        raise RuntimeError, "page number can't be greater than total pages: #{@page} > #{@total_pages}"
      end

      init = (@page - 1) * @per_page
      offset = (init + @per_page - 1) >= all_posts.size ? all_posts.size : (init + @per_page - 1)

      @total_posts = all_posts.size
      @posts = all_posts[init..offset]
      @previous_page = @page != 1 ? @page - 1 : nil
      @next_page = @page != @total_pages ? @page + 1 : nil
    end

    def to_liquid
      {
          'page' => page,
          'per_page' => per_page,
          'posts' => posts,
          'total_posts' => total_posts,
          'total_pages' => total_pages,
          'previous_page' => previous_page,
          'next_page' => next_page
      }
    end
  end

  class PostPage < Page
    def initialize(site, base, dir, name, layout, page_number)
      @site = site
      @base = base
      @dir = dir
      @name = name

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), "#{layout}.html")
      self.data['title'] = "Page #{page_number} of the Search.gov Blog"
    end
  end
end
