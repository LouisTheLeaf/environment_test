# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',author: 'john smith',price: 10,published_date: '1999-12-13')
    #described_class.new(author: 'john smith')
    #described_class.new(price: 10)
    #described_class.new(published_date: '1999-12-13')#Date.new(2021,9,27)) ##maybe???
  end

  # Sunny Day
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  # Rainy Day
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a publishing date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
