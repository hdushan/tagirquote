Given(/^I am on the TAIGIR Car Insurance page$/) do
  visit "/"
  expect(page).to have_content('TAIGIR Insurance')
  click_on "getcarquote"
  expect(page).to have_content('TAIGIR Car Insurance')
end

When(/^I submit my  details '(\d+)', '(.*?)', '(.*?)' & '(.*?)' for a car insurance quote$/) do | age, gender, state, make |
  select(make, :from => 'make')
  fill_in 'year', :with => "2000"
  fill_in 'age', :with => age
  choose(gender)
  select(state, :from => 'state')
  fill_in 'email', :with => "test@gmail.com"
  click_button 'Get Quote'
end