Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['fithub_app_id'], ENV['fithub_app_secret'], {:callback_url => 'http://localhost:3000/auth/facebook/callback/'}
end
