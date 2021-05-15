source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# 基本ツール
gem 'rails', '~> 6.0'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jquery-rails', '~> 4.4'
gem 'kaminari', '~> 1.2', '>= 1.2.1'
gem 'dotenv-rails'
gem 'high_voltage', '~> 3.1', '>= 3.1.2'
gem "rack-dev-mark"
gem 'bootsnap', '>= 1.1.0', require: false

# デザイン
gem 'bootstrap', '~> 4.5', '>= 4.5.3'
gem 'font-awesome-sass', '~> 5.15', '>= 5.15.1'

# 認証
gem 'devise', '~> 4.7', '>= 4.7.3'

# 管理画面
gem 'rails_admin'

# 画像アップロード
gem 'carrierwave', '~> 2.1'

# 画像リサイズ
gem 'mini_magick', '~> 4.11'

# グラフ
gem "chartkick"

group :development, :test do
  # 基本ツール
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # 基本ツール
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
  # ERD作成
  gem 'rails-erd'

  # 速度計測
  gem 'rack-mini-profiler'
  gem 'rack-lineprof'
end

group :test do
  # 基本ツール
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 4.4', '>= 4.4.1'

  # テストツール
  gem 'cucumber', '~> 5.2'

  # カバレッジ表示
  gem 'simplecov', '~> 0.21.2'
end

# group :production, :staging do
#   gem 'unicorn'
#   gem 'capistrano', require: false
#   gem 'capistrano-rails',    require: false
#   gem 'capistrano-rbenv',    require: false
#   gem 'capistrano-bundler',  require: false
#   gem 'ed25519'
# end