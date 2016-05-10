class SwaggerController < ApplicationController
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    info do
      key :title, 'Blog API'
      key :version, '0.1.0'
    end
    key :basePath, Rails.configuration.relative_url_root || '/'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end

  SWAGGERED_CLASSES = [
    Api::PostsController,
    self
  ].freeze

  def json
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
