require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  # index
  describe 'GET #index' do
    before(:example) do
      get '/users/1/posts'
    end

    it 'is a success' do
      expect(response).to have_http_status(200)
    end

    it 'renders index template' do
      expect(response).to render_template('index')
    end

    it 'renders placeholder for the response body' do
      expect(response.body).to include('Here is a list of all posts for a given user')
    end
  end

  # show
  describe 'GET show' do
    before(:example) do
      get '/users/1/posts/1'
    end

    it 'is a success' do
      expect(response).to have_http_status(200)
    end

    it 'renders index template' do
      expect(response).to render_template('show')
    end

    it 'renders placeholder for the response body' do
      expect(response.body).to include('Here is a view of a post for a given user')
    end
  end
end
