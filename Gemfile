source 'https://rubygems.org'
ruby '2.7.2'
gem 'rails', '4.2.5.2'
gem 'pg', '0.19.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', '~> 0.12.3', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'carrierwave'
gem 'rails_12factor'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'momentjs-rails'
gem 'cancan'
gem 'redis'
gem 'ransack'
gem 'mini_magick'
gem 'liquid', '~> 3.0.6'
gem 'zip-zip'
gem 'pry'
gem 'protected_attributes'
gem 'acts_as_list', "~> 0.7.2"
gem "paperclip", "~> 5.0"
gem 'dotenv-rails'
gem 'activerecord'
gem 'sidekiq'
gem 'sidekiq-status'
gem 'prawn'
gem 'pdfkit'
gem 'simple_form', '~> 3.2'
gem 'bootstrap-sass', '~> 3.3'
# gem "sqlite3", "~> 1.3.0"
gem 'ckeditor', '~> 4.1'
gem 'devise'
gem 'combine_pdf', '>= 1.0.7'
gem 'wicked_pdf' #, git: 'https://github.com/mileszs/wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'ruby-filemagic'
gem 'axlsx', '2.1.0.pre'
gem 'geocoder'
gem 'roo' # used to parse spreadsheet data
gem 'roo-xls'
gem 'docx'
gem 'paleta'
gem 'foreman'
gem 'rmagick', '2.16.0'
gem 'remotipart', '~> 1.2'
gem 'omniauth'
gem 'omniauth-oauth2', '~> 1.4'
gem 'omniauth-microsoft_graph', git: 'https://github.com/synth/omniauth-microsoft_graph'
gem 'flatpickr_rails'
gem 'ancestry'
gem 'dropzonejs-rails'
gem 'naturalsort'
gem 'hashdiff', '~> 1.0'
gem 'chronic'
gem 'whenever', require: false # used for cronjobs
gem 'activerecord-session_store' #, git: 'https://github.com/rails/activerecord-session_store'

gem 'i18n-active_record',
    # git: 'https://github.com/svenfuchs/i18n-active_record.git',
    require: 'i18n/active_record'

gem 'rack-cors' # handles Cross-Origin Resource Sharing - AKA allows js requests to fetch data form the server

group :development, :test do
  gem 'byebug', "~> 8.2.2"
  gem 'better_errors'
  gem 'quiet_assets'
  # gem 'thin'
  gem 'puma'
  gem 'letter_opener'
  gem 'sextant'
  gem 'capybara'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'geckodriver-helper'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'

  gem 'rack-mini-profiler'
  gem 'flamegraph'
  gem 'stackprof'
  gem 'memory_profiler'
  gem 'sinatra'
  #
  # gem 'newrelic_rpm'
  gem 'rubocop', require: false
end

group :test do
  gem 'simplecov', require: false
  gem 'database_cleaner'
end

group :production do
  gem 'passenger'
end
