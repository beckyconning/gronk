class FeelingGraphicsController < ApplicationController
  # GET /feeling_graphics
  # GET /feeling_graphics.xml
  def index
    @feeling_graphics = FeelingGraphic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feeling_graphics }
    end
  end

  # GET /feeling_graphics/1
  # GET /feeling_graphics/1.xml
  def show
    @feeling_graphic = FeelingGraphic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feeling_graphic }
    end
  end

  # GET /feeling_graphics/new
  # GET /feeling_graphics/new.xml
  def new
    @feeling_graphic = FeelingGraphic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feeling_graphic }
    end
  end

  # GET /feeling_graphics/1/edit
  def edit
    @feeling_graphic = FeelingGraphic.find(params[:id])
  end

  # POST /feeling_graphics
  # POST /feeling_graphics.xml
  def create
    @feeling_graphic = FeelingGraphic.new(params[:feeling_graphic])

    respond_to do |format|
      if @feeling_graphic.save
        format.html { redirect_to(@feeling_graphic, :notice => 'Feeling graphic was successfully created.') }
        format.xml  { render :xml => @feeling_graphic, :status => :created, :location => @feeling_graphic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feeling_graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feeling_graphics/1
  # PUT /feeling_graphics/1.xml
  def update
    @feeling_graphic = FeelingGraphic.find(params[:id])

    respond_to do |format|
      if @feeling_graphic.update_attributes(params[:feeling_graphic])
        format.html { redirect_to(@feeling_graphic, :notice => 'Feeling graphic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feeling_graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feeling_graphics/1
  # DELETE /feeling_graphics/1.xml
  def destroy
    @feeling_graphic = FeelingGraphic.find(params[:id])
    @feeling_graphic.destroy

    respond_to do |format|
      format.html { redirect_to(feeling_graphics_url) }
      format.xml  { head :ok }
    end
  end
end
