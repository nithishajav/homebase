require "sinatra"

set :port, 8080
# Explicitly set the binding to 0.0.0.0 for external accessibility
set :bind, '0.0.0.0'
get "/" do
  "Hello world!"
end
