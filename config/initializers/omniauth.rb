Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
      {
        prompt: 'select_account',
        image_aspect_ratio: 'square',
        image_size: 50,
        access_type: 'offline',
        redirect_uri: 'https://horror-comedy.onrender.com/users/auth/google_oauth2/callback'
      }
  end
  OmniAuth.config.allowed_request_methods = [:post, :get]