class PetFetcher

  def self.connect
    Petfinder.configure do |config|
      config.api_key = ENV["PETFINDER_KEY"]
      config.api_secret = ENV["PETFINDER_SECRET"]
    end
    Petfinder::Client.new
  end

end
