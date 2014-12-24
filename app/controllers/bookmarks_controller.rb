class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update_attributes(bookmark_params)
      redirect_to bookmarks_path, notice: "Bookmark saved"
    else
      flash[:error] = "There was an error saving your item"
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      flash[:notice] = 'Your bookmark has been deleted'
      redirect_to bookmarks_path
    else
      flash[:error] = "There was an error deleting your bookmark"
    end
  end


  private
    def bookmark_params
      params.require(:bookmark).permit(:url)
    end
 end
