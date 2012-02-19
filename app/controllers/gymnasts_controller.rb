class GymnastsController < ApplicationController
  # GET /gymnasts
  # GET /gymnasts.json
  def index
    @gymnasts = Gymnast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gymnasts }
    end
  end

  # GET /gymnasts/1
  # GET /gymnasts/1.json
  def show
    @gymnast = Gymnast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gymnast }
    end
  end

  # GET /gymnasts/new
  # GET /gymnasts/new.json
  def new
    @gymnast = Gymnast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gymnast }
    end
  end

  # GET /gymnasts/1/edit
  def edit
    @gymnast = Gymnast.find(params[:id])
  end

  # POST /gymnasts
  # POST /gymnasts.json
  def create
    @gymnast = Gymnast.new(params[:gymnast])

    respond_to do |format|
      if @gymnast.save
        format.html { redirect_to @gymnast, :notice => 'Gymnast was successfully created.' }
        format.json { render :json => @gymnast, :status => :created, :location => @gymnast }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gymnast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gymnasts/1
  # PUT /gymnasts/1.json
  def update
    @gymnast = Gymnast.find(params[:id])

    respond_to do |format|
      if @gymnast.update_attributes(params[:gymnast])
        format.html { redirect_to @gymnast, :notice => 'Gymnast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gymnast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gymnasts/1
  # DELETE /gymnasts/1.json
  def destroy
    @gymnast = Gymnast.find(params[:id])
    @gymnast.destroy

    respond_to do |format|
      format.html { redirect_to gymnasts_url }
      format.json { head :no_content }
    end
  end
end
