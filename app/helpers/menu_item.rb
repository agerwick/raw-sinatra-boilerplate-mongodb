class App
  helpers do
    def menuItem(path, text)
      request.path
      haml_tag(:a, :href=>path, :class=>path==request.path ? "selected" : nil) do
        haml_tag(:li, text)
      end
    end
  end
end
