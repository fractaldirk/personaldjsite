OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '144349749093091', 'a2f1322ae7201e7c8f54e5287b656ddd'
end
