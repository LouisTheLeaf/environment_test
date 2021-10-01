# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid inputs 1' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'john smith'
    fill_in 'Price', with: 10
    fill_in 'Published date', with: Date.new(2021,9,27) #Date.parse("9/27/2021")
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid inputs 2' do
    visit new_book_path
    fill_in 'Title', with: 'jax'
    fill_in 'Author', with: 'carrie kay'
    fill_in 'Price', with: 20.21
    fill_in 'Published date', with: Date.new(2019,8,1) #Date.parse("9/27/2021")
    visit books_path
    expect(page).not_to have_content('jax')
  end

  scenario 'valid inputs 3' do
    visit new_book_path
    fill_in 'Title', with: 'scooby'
    fill_in 'Author', with: 'dooby'
    fill_in 'Price', with: 60
    fill_in 'Published date', with: Date.new(2021,9,27) #Date.parse("9/27/2021")
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('scooby')
  end
end
