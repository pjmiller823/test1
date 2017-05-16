class PagesController < ApplicationController
  # GET /pages
  def index
    @pages = Page.all
  end

  # GET /pages/1
  def show
    @page = Page.find(params[:id])
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pages/1
  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pages/1
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url, notice: 'Page was successfully destroyed.'
  end

  def group
  end

  def author
  end

  def submission
  end
  private

  # Only allow a trusted parameter "white list" through.
  def page_params
    params.require(:page).permit(:thing1, :thing2, :thing3)
  end
end
