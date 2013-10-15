OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1426512247572165', '616d60c0b73c140ed07257540178be0a'
end
