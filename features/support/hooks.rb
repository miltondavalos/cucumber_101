require 'watir-webdriver'

browser = Watir::Browser.new :ff

Before do
  @browser = browser
end

After do
@browser.close
end