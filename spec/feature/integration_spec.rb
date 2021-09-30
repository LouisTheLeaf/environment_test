# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'john smith'
    fill_in 'Price', with: 10
    fill_in 'Published date', with: Date.new(2021,9,27) #Date.parse("9/27/2021")
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
