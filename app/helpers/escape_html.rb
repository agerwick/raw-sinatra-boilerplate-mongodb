class App
  helpers do
    def h(text)  # for text on an html page
      Rack::Utils.escape_html(text)
    end
    alias escape_html h

    def escape_path(text)  # for uri paths
      Rack::Utils.escape_path(text)
    end
  end
end
