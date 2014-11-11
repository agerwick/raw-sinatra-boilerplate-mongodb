module AppHelpers
  def menuItem(path, text, a_tag_params = {})
    if not a_tag_params.keys.include? :id
      a_tag_params.merge!({:id => text.for_css})
    end
    haml_tag(:a, {:href=>path, :class=>path==request.path ? "selected" : nil}.merge(a_tag_params)) do
      haml_tag(:li, text)
    end
  end
end
