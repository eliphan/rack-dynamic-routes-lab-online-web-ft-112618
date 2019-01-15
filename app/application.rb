class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path =="/item/Item.name"
      resp.write "Item.price"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
      resp.finish
  end
end