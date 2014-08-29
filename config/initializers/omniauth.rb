OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '287537208097249', '8df0ae267beeb3480e173560de75bda7'
end