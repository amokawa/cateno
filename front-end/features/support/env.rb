require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.register_driver :selenium do |app|
    browser = (ENV['browser'] || 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser)
end

Capybara.default_driver = :selenium

Capybara.configure do |config|
    config.default_max_wait_time = 30
end

Capybara.save_path = "reports"
