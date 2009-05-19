class PresentsController < ApplicationController
  # GET /presents
  # GET /presents.xml
  def index
    @presents = Present.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @presents }
    end
  end

  # GET /presents/1
  # GET /presents/1.xml
  def show
    @present = Present.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @present }
    end
  end

  # GET /presents/new
  # GET /presents/new.xml
  def new
    @present = Present.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @present }
    end
  end

  # GET /presents/1/edit
  def edit
    @present = Present.find(params[:id])
  end

  # POST /presents
  # POST /presents.xml
  def create
    @present = Present.new(params[:present])

    respond_to do |format|
      if @present.save
        flash[:notice] = 'Present was successfully created.'
        format.html { redirect_to(@present) }
        format.xml  { render :xml => @present, :status => :created, :location => @present }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @present.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /presents/1
  # PUT /presents/1.xml
  def update
    @present = Present.find(params[:id])

    respond_to do |format|
      if @present.update_attributes(params[:present])
        flash[:notice] = 'Present was successfully updated.'
        format.html { redirect_to(@present) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @present.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /presents/1
  # DELETE /presents/1.xml
  def destroy
    @present = Present.find(params[:id])
    @present.destroy

    respond_to do |format|
      format.html { redirect_to(presents_url) }
      format.xml  { head :ok }
    end
  end
end
