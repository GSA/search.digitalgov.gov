module PostsFilters
  def sort_by_date(posts)
    posts.sort { |a, b| b.date <=> a.date }
  end
end
Liquid::Template.register_filter PostsFilters

