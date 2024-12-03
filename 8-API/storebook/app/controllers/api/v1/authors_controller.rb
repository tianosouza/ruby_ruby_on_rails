class Api::V1::AuthorsController < ApplicationController
  before_action :authenticate_request
  before_action :set_author, only: %i[ show update destroy ]

  # GET /authors
  def index
    @authors = Author.all

    render json: @authors
  end

  # GET /authors/1
  def show
    render json: @author
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      render json: @author, status: :created, location: api_v1_book_url(@author)
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy!
  end

  private
    def authenticate_request
      # implement authentication logic here
      token = request.headers['Authorization']
      if token.present?
        begin
          decode_token = JsonWebTokenService.decode(token.split(' ').last)
          user_id = decode_token['user_id']
          @current_user = User.find(user_id)
          unless @current_user
            render json: { error: 'Not Authorized' }, status: :unauthorized
          end
        rescue StandardError => e
          render json: { error: "Invalid Token" }, status: :unauthorized
        end
      else
        render json: { error: 'Not Authorized' }, status: :unauthorized
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
      unless @author
        render json: { error: 'Author not found' }, status: :not_found
      end
    end

    # Only allow a list of trusted parameters through.
    def author_params
      params.require(:author).permit(:name)
    end
end
