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

  def create
    @bookmark = Bookmark.new
    @bookmark.listing_id = params[:listing_id]
    @bookmark.user_id = params[:user_id]

    if @bookmark.save
      redirect_to "/bookmarks", :notice => "Bookmark created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    @bookmark.listing_id = params[:listing_id]
    @bookmark.user_id = params[:user_id]

    if @bookmark.save
      redirect_to "/bookmarks", :notice => "Bookmark updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])

    @bookmark.destroy

    redirect_to "/bookmarks", :notice => "Bookmark deleted."
  end
end
