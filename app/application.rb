class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    clock = time.hour
      if clock < 12
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end
    
    resp.finish

  end

end