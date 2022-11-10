require 'rails_helper'

RSpec.describe User, type: :model do
  # tests go here
  subject { User.new(name: 'Dan', photo: 'link/goes/here', bio: 'this is my bio') }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts counter should be valid' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'recent posts count should be less than 4' do
    posts_count = subject.recent_three.length
    expect(posts_count).to be < 4
  end
end
