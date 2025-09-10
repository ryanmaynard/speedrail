# Be sure to restart your server when you modify this file.

# Configure additional security headers
Rails.application.configure do
  # Add security headers middleware
  config.middleware.use Rack::Attack if defined?(Rack::Attack)
  
  # Configure security headers
  config.force_ssl = true if Rails.env.production?
  
  # Additional security configurations
  config.session_store :cookie_store, 
    key: '_speedrail_session',
    httponly: true,
    secure: Rails.env.production?,
    same_site: :lax
end

# Add security headers middleware
class SecurityHeadersMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    
    # Add security headers
    headers['X-Frame-Options'] = 'SAMEORIGIN'
    headers['X-Content-Type-Options'] = 'nosniff'
    headers['X-XSS-Protection'] = '1; mode=block'
    headers['Referrer-Policy'] = 'strict-origin-when-cross-origin'
    headers['Permissions-Policy'] = 'geolocation=(), microphone=(), camera=()'
    
    [status, headers, response]
  end
end

Rails.application.config.middleware.use SecurityHeadersMiddleware
