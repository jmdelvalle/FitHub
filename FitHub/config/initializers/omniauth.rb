Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '465683570286679', '3764600960185c75021f50a6618f55d5', {:callback_url => "http://localhost:3000/auth/facebook/callback/"}
end
