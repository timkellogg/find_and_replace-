require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('takes the users entry and a word it would like replaces with another word
  then replaces that word.') do
    visit('/')
    fill_in('user_input', :with => 'I like to smoke hash rockets')
    fill_in('find', :with => 'hash rockets')
    fill_in('replace', :with => 'da torch')
    click_button('Submit')
    expect(page).to have_content('I like to smoke da torch')
  end
end
