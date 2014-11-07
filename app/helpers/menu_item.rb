module AppHelpers
  def menuItem(path, text)
    #request # for testing purposes
    haml_tag(:a, :href=>path, :class=>path==request.path ? "selected" : nil) do
      haml_tag(:li, text)
    end
  end
end
