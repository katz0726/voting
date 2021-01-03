require 'rails'

namespace :feature do
  desc "featureテストを実行するタスク"

  task :test do
    system "cucumber --format pretty --format rerun --out test/reports/rerun.txt --guess --no-multiline --quiet --out test/reports/features.html"
  end
end
