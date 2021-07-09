class Application

    def call(env)
      resp = Rack::Response.new
  
      resp.write "#{Time.now}\n"
  
    #   Time.now.hour < 12 ? resp.write "Good Morning!" : resp.write  "Good Afternoon!"
    if Time.now.hour < 12
        resp.write "Good Morning!"
    else
        resp.write  "Good Afternoon!"
    end
  
      resp.finish
    end
  
  end 
  