Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'lCDYNZh8CJWbCVxDwas6ig', 'pCTpB7UOsXbhKetepO4BIONcvtQH4I2YFhODYpovpE'
  provider :facebook, '1440620512839904', '3364fc2323e60d958e2d883f1d17a878'
end
