require 'rails_helper'

RSpec.describe 'User show', type: :feature do
  before(:example) do
    @user = User.create(name: 'Elon Musk', photo: 'link/goes/here', bio: 'this is my bio')

    visit user_path(@user)
  end

  it 'renders photo of the user' do
    expect(page.html).to include(@user.photo)
  end

  it 'show username of a given user' do
    expect(page).to have_content('Elon Musk')
  end
end
