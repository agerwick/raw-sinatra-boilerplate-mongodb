module AppHelpers
  def escape_html(text)  # for text on an html page
    Rack::Utils.escape_html(text)
  end
  alias h escape_html

# commented out as it's not (yet) in use
#   def escape_path(text)  # for uri paths
#     Rack::Utils.escape_path(text)
#   end
end
