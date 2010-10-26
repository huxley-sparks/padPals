class PadsController < ApplicationController
  # GET /pads
  # GET /pads.xml
  def index
    @pads = Pad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pads }
    end
  end

  # GET /pads/1
  # GET /pads/1.xml
  def show
    @pad = Pad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pad }
    end
  end

  # GET /pads/new
  # GET /pads/new.xml
  def new
    @pad = Pad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pad }
    end
  end

  # GET /pads/1/edit
  def edit
    @pad = Pad.find(params[:id])
  end

  # POST /pads
  # POST /pads.xml
  def create
    @pad = Pad.new(params[:pad])

    respond_to do |format|
      if @pad.save
        format.html { redirect_to(@pad, :notice => 'Pad was successfully created.') }
        format.xml  { render :xml => @pad, :status => :created, :location => @pad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pads/1
  # PUT /pads/1.xml
  def update
    @pad = Pad.find(params[:id])

    respond_to do |format|
      if @pad.update_attributes(params[:pad])
        format.html { redirect_to(@pad, :notice => 'Pad was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pads/1
  # DELETE /pads/1.xml
  def destroy
    @pad = Pad.find(params[:id])
    @pad.destroy

    respond_to do |format|
      format.html { redirect_to(pads_url) }
      format.xml  { head :ok }
    end
  end
end
