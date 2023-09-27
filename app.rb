require "sinatra"
require "sinatra/reloader"
require "rqrcode"


get("/") do
 
  erb(:home)

end

get("/qr") do
  #this should be 
  text=params.fetch("txt")

  qr = RQRCode::QRCode.new(text)
  @qr_s=qr.to_s
  erb(:qr)
end
