# This is where to define any objects normally provided by a Sinatra session that is not available when testing.
# Defining them here makes them available for helpers and other objects that depend upon them so tests can still be performed.

module SinatraMockObjects
  def requestMock
    Struct.new(:path) do; end
  end
end
