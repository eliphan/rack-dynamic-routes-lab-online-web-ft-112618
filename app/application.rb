
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path =="/item/" 
    else
      resp.status = 404
    end
      
  end