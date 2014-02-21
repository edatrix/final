class Find

  Petfinder.configure do |config|
    config.api_key = '1f7b2c995b345e95a219ee0216c6c2ca'
    config.api_secret = '001140c21ced6653e7812414be872368'
  end
  petfinder = Petfinder::Client.new

end
