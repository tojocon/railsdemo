class PostToDatabasesController < ApplicationController
  before_action :set_post_to_database, only: [:show, :edit, :update, :destroy]

  # GET /post_to_databases
  # GET /post_to_databases.json
  def index
    @post_to_databases = PostToDatabase.all
  end

  # GET /post_to_databases/1
  # GET /post_to_databases/1.json
  def show
  end

  # GET /post_to_databases/new
  def new
    @post_to_database = PostToDatabase.new
  end

  # GET /post_to_databases/1/edit
  def edit
  end

  # POST /post_to_databases
  # POST /post_to_databases.json
  def create
    @post_to_database = PostToDatabase.new(post_to_database_params)

    respond_to do |format|
      if @post_to_database.save
        format.html { redirect_to @post_to_database, notice: 'Post to database was successfully created.' }
        format.json { render :show, status: :created, location: @post_to_database }
      else
        format.html { render :new }
        format.json { render json: @post_to_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_to_databases/1
  # PATCH/PUT /post_to_databases/1.json
  def update
    respond_to do |format|
      if @post_to_database.update(post_to_database_params)
        format.html { redirect_to @post_to_database, notice: 'Post to database was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_to_database }
      else
        format.html { render :edit }
        format.json { render json: @post_to_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_to_databases/1
  # DELETE /post_to_databases/1.json
  def destroy
    @post_to_database.destroy
    respond_to do |format|
      format.html { redirect_to post_to_databases_url, notice: 'Post to database was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_to_database
      @post_to_database = PostToDatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_to_database_params
      params.require(:post_to_database).permit(:name, :title, :content)
    end
end
