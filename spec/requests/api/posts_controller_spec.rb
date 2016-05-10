


require 'rails_helper'

POST_LIST_ITEM_SCHEMA = {
  title: :string,
  author: :string,
}

RSpec.describe '/api/posts', type: :request do
  describe 'GET' do
    before :each do
      Post.delete_all

      Post.create!(title: 'MyTitle', author: 'me')

      get '/api/posts'
    end

    it 'returns status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns valid json list of posts' do
      expect(json_body.count).to be >(0)
      expect_json_types('*', POST_LIST_ITEM_SCHEMA)
    end
  end
end