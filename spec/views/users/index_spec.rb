require 'rails_helper'

RSpec.describe 'Users index', type: :feature do
  before(:example) do
    User.create(name: 'Elon Musk', photo: 'link/goes/here', bio: 'this is my bio')
    User.create(name: 'Diamond Platnumz', photo: 'link/goes/here', bio: 'this is my bio')

    visit users_path
  end

  it 'show created users' do
    expect(page).to have_content('Elon Musk')
    expect(page).to have_content('Diamond Platnumz')
  end
end
