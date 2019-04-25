require 'httparty'
require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'faker'
require 'cpf_faker'


Capybara.configure do |config|
    #selenium   selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'http://187.35.155.198:5722/'
    config.default_max_wait_time = 5 

end


After('@print') do |scenario|
   add_screenshot(scenario)

end

def add_screenshot(scenario)
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
    nome_cenario = nome_cenario.gsub(' ','_').downcase!
    screenshot = "#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print')
end
