require 'rails'

namespace :feature do
  desc "featureテストを実行するタスク"

  task :test do
    system "cucumber --guess --format html --out result.html --format rerun"
  end
end
