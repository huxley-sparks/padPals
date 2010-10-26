class PalsController < ApplicationController
  # GET /pals
  # GET /pals.xml
  def index
    @pals = Pal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pals }
    end
  end

  # GET /pals/1
  # GET /pals/1.xml
  def show
    @pal = Pal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pal }
    end
  end

  # GET /pals/new
  # GET /pals/new.xml
  def new
    @pal = Pal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pal }
    end
  end

  # GET /pals/1/edit
  def edit
    @pal = Pal.find(params[:id])
  end

  # POST /pals
  # POST /pals.xml
  def create
    @pal = Pal.new(params[:pal])

    respond_to do |format|
      if @pal.save
        format.html { redirect_to(@pal, :notice => 'Pal was successfully created.') }
        format.xml  { render :xml => @pal, :status => :created, :location => @pal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pals/1
  # PUT /pals/1.xml
  def update
    @pal = Pal.find(params[:id])

    respond_to do |format|
      if @pal.update_attributes(params[:pal])
        format.html { redirect_to(@pal, :notice => 'Pal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pals/1
  # DELETE /pals/1.xml
  def destroy
    @pal = Pal.find(params[:id])
    @pal.destroy

    respond_to do |format|
      format.html { redirect_to(pals_url) }
      format.xml  { head :ok }
    end
  end
end
