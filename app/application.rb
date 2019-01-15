class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path =="/item/Item.name"
      resp.write "Item.price"
    else
      resp.status = 404
    end
      
  end
end