class ApiController < ApplicationController
  include Swagger::Blocks

  protect_from_forgery with: :null_session  # overwrite application controller
end