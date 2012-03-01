def fake_select(parameter, collection, description="", preposition="")
  html = "<div class='fake_select'>"

  html << "<a class='first_option'>#{preposition} "
  html << find_param(params[parameter], collection.first)
  html << " #{description}</a>"

  html << "<ul class='fake_list'>"
  html << build_list_items(colleciton, description)
  html << "</ul></div>"

  html << hidden_field_tag(parameter, params[parameter])
  html.html_safe
end

def find_param(parameter, item)
  params[parameter].blank? ? params[parameter] : item
end

def build_list_items(items, description)
  items.collect do |item|
    content_tag(:li) {link_to "#{item} #{description}", '#', data: item, rel: parameter}
  end.join("\n")
end
