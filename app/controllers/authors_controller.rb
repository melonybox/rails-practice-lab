class AuthorsController < ApplicationController

  before_action :get_author_id, only:  [:show, :edit, :update]

  def index
    @authors = Author.all
  end
  
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  def destroy
    Author.destroy(params[:id])
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, :birth_year)
  end

  def get_author_id
    @author = Author.find(params[:id])
  end

end
