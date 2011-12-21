class Settings < Settingslogic
  namespace Rails.env
  
  if Rails.env.production?
    source "#{Rails.root}/config/settings.yml"
  else
    source "#{Rails.root}/config/dev_settings.yml"
  end
end
