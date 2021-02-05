Rails.application.config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
Rails.application.config.i18n.available_locales = [:en, :es]
Rails.application.config.i18n.default_locale = :es