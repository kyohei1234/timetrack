source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.5'

#View & Helpers
gem 'haml-rails'

# Modify erb to haml
gem 'erb2haml'

#declare constants
gem 'rails_config'

group :development do
  # モデルにそのデータ構造のコメントをいれてくれる
  gem 'annotate'
end

group :development, :test do
  gem 'sqlite3', '1.3.8'
  # Railsのベストプラクティスに従っているか調べてくれる
  gem 'rails_best_practices'
end

group :test do
  # gem 'selenium-webdriver', '2.35.1'
  # gem 'capybara', '2.1.0'
  # gem 'spork-rails', '4.0.0'
  # gem 'guard-spork', '1.5.0'
  # gem 'childprocess', '0.3.6'
  # gem 'factory_girl_rails', '4.2.1'
end

gem 'devise'
gem 'omniauth'

gem 'omniauth-twitter'

gem 'active_admin_importable'
gem 'sass-rails', '4.0.2'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
gem 'bcrypt-ruby', '3.1.2'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'will_paginate-bootstrap'
gem 'bootstrap-will_paginate', '0.0.9'


# タグ
gem 'acts-as-taggable-on', '~> 3.4'
# アナリティクス
gem "chartkick"
# アナリティクスでgroup_by_dayなどを使えるようにする
gem 'groupdate'
gem 'execjs'
gem 'therubyracer'

# irbの上位互換pryを使用
gem 'pry-rails'
# binding.pryにより、ブレイクポイントを設置
gem 'pry-byebug'
# エラー出力をいい感じにしてくれる
gem 'better_errors'
# ブラウザ上でデバッグ
gem 'binding_of_caller'
# consoleでSQLの結果を見やすくする
gem 'hirb'
gem 'hirb-unicode'
# ログを見やすくする
gem 'quiet_assets'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'mysql2'
  gem 'rails_12factor', '0.0.2'
end
