


class Api::PostsController < ApiController
  swagger_path '/api/posts' do
    operation :get do
      key :description, 'Lists all posts'

      response 200 do
        schema do
          key :type, :array

          items do
            key :$ref, :PostListItem
          end
        end
      end
    end
  end

  swagger_schema :PostListItem do
    key :required, [:title, :author]

    property :title do
      key :type, :string
      key :description, 'Title of the post'
    end

    property :author do
      key :type, :string
    end
  end

  def index
    posts = Post.all

    render json: posts
  end
end