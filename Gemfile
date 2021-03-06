source 'https://rubygems.org'
ruby '2.3.1'

#======================================================
# Rails Core
#======================================================
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'
gem 'puma', '~> 3.0'

#======================================================
# Assets - Back-end
#======================================================
gem 'gibbon'
gem 'delayed_job_active_record'
gem 'devise'

#======================================================
# Assets - Integration & Compressors
#======================================================
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

#======================================================
# Assets - Front-end
#======================================================
gem "animate-rails"
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.2.0'
gem "simple_form"
gem "font-awesome-rails"

source 'https://rails-assets.org' do
  gem 'rails-assets-jquery'
  gem 'rails-assets-sweetalert'

  gem 'rails-assets-angular'
  gem 'rails-assets-angular-resource'

  gem 'rails-assets-angular-timer'

  gem 'rails-assets-angular-mask'
  gem 'rails-assets-string-mask'

  gem 'rails-assets-slick-carousel'
  gem 'rails-assets-angular-slick-carousel'
end


#======================================================
# Assets - Gem Development & Test
#======================================================
group :development, :test do
  gem 'byebug', platform: :mri # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
