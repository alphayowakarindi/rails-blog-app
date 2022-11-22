require 'rails_helper'

RSpec.describe 'User show', type: :feature do
  before(:example) do
    @user = User.create(name: 'Elon Musk', photo: 'link/goes/here', bio: 'this is my bio')
    User.create(name: 'Diamond Platnumz', photo: 'link/goes/here', bio: 'this is my bio')

    visit users_path
  end

  it 'renders photo of the user' do
    expect(page.html).to include(@user.photo)
  end
end
