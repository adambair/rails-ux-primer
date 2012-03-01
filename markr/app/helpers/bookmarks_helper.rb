module BookmarksHelper
  def formatted_something(item)
    "#{item.title} (#{item.url})"
  end
end
