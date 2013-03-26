module Jekyll
  class TagPagination < Generator
    safe true

    def generate(site)
      site.tags.dup.each do |tag, posts|
        paginate(site, tag, posts.sort { |a, b| b.date <=> a.date })
      end
    end

    def paginate(site, tag, posts)
      pages = PostPager.calculate_pages(posts, site.config['paginate_per_page'].to_i)
      (1..pages).each do |num_page|
        pager = PostPager.new(site.config, num_page, posts, pages)
        dir = num_page > 1 ? "/tagged/#{tag}/page#{num_page}" : "/tagged/#{tag}"
        newpage = TagPage.new(site, site.source, tag, posts, dir, 'index.html', site.config['posts_tag_layout'])
        newpage.pager = pager
        site.pages << newpage
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, tag, posts, dir, name, layout)
      @site = site
      @base = base
      @tag = tag
      @posts = posts
      @dir = dir
      @name = name

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), "#{layout}.html")
      self.data['tag'] = tag
      self.data['title'] = "Posts tagged #{tag}"
    end
  end
end
