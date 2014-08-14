Given(/^I visit google$/) do
  @browser.goto 'www.google.com'
end
When(/^I search for CNN$/) do
  @browser.text_field(id: 'gbqfq').set 'CNN'
end
When(/^I click on Search$/) do
  @browser.button(name: 'btnG').click
end
Then(/^I should see CNN.com in the search result$/) do
  @browser.wait 5 do
    expect(@browser.body.text).to include 'CNN.com - Breaking News, U.S., World, Weather ...'
  end
end