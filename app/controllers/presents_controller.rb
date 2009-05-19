class PresentsController < ApplicationController
  # GET /presents
  def index
    @presents = Present.all
  end

  # GET /presents/1
  def show
    @present = Present.find(params[:id])
  end

  # GET /presents/new
  def new
    @present = Present.new
  end

  # GET /presents/1/edit
  def edit
    @present = Present.find(params[:id])
  end

  # POST /presents
  def create
    @present = Present.new(params[:present])

    if @present.save
      flash[:notice] = 'Present was successfully created.'
      redirect_to(@present)
    else
      render :action => "new"
    end
  end

  # PUT /presents/1
  def update
    @present = Present.find(params[:id])

    if @present.update_attributes(params[:present])
      flash[:notice] = 'Present was successfully updated.'
      redirect_to(@present)
    else
      render :action => "edit"
    end
  end

  # DELETE /presents/1
  def destroy
    @present = Present.find(params[:id])
    @present.destroy

    redirect_to(presents_url)
  end
end
