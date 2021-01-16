#coding: utf-8

require 'capybara'
require 'capybara/cucumber'
# require 'capybara/mechanize'
# require 'rspec'

# テスト対象のサイト
# ドライバがmechanizeの場合、他のサイトにもアクセスできる。
Capybara.app_host = 'http://google.co.jp'

# デフォルトで使われるドライバ
# これを指定しないと、rack_testが使われるため
# PHPなどRack以外のアプリはテストできない。
# Capybara.default_driver = :mechanize

Before do
	# タイムアウトの設定（おそらくmechanizeでしか有効でない）
	# 時間がかかりすぎるときはエラーにする
	
	# コネクションを開くまでのタイムアウト秒数
	Capybara.current_session.driver.browser.agent.open_timeout = 1
	# データ読み出しのタイムアウト秒数
	Capybara.current_session.driver.browser.agent.read_timeout = 1
end