if Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: '25',
    authentication: :plain,
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    domain: ENV['SENDGRID_DOMAIN']
  }
end

Querydeck::Application.config.action_mailer.default_url_options = { host: Settings.domain_name }