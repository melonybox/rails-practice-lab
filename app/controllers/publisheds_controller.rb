class PublishedsController < ApplicationController
  def create
    @publish = Published.create(publish_params)
    @book = Book.find(params[:published][:book_id])
    redirect_to book_path(@book)
  end

  def destroy
    @publishedy = Published.find(params[:id])
    Published.destroy(params[:id])
    redirect_to book_path(@publishedy.book_id)
  end

  private

  def publish_params
    params.require(:published).permit(:author_id,:book_id)
  end
end
