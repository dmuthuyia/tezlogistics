OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1717094135220448", "40f530493fb405d5d619bf5491395a9a"
end

