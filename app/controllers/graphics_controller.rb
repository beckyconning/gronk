class GraphicsController < ApplicationController
  # GET /graphics
  # GET /graphics.xml
  def index
    @feeling_graphics = Hash.new
    Feeling_definitions.each do |feeling_definition|
      if feeling_definition.feeling_graphics.find_by_creature_definition(@creature_definition)
        @feeling_graphics.merge Hash[]
      end
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graphics }
    end
  end

  # GET /graphics/1
  # GET /graphics/1.xml
  def show
    @graphic = Graphic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @graphic }
    end
  end

  # GET /graphics/new
  # GET /graphics/new.xml
  def new
    @graphic = Graphic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @graphic }
    end
  end

  # GET /graphics/1/edit
  def edit
    @graphic = Graphic.find(params[:id])
  end

  # POST /graphics
  # POST /graphics.xml
  def create
    @graphic = Graphic.new(params[:graphic])

    respond_to do |format|
      if @graphic.save
        format.html { redirect_to(@graphic, :notice => 'Graphic was successfully created.') }
        format.xml  { render :xml => @graphic, :status => :created, :location => @graphic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graphics/1
  # PUT /graphics/1.xml
  def update
    @graphic = Graphic.find(params[:id])

    respond_to do |format|
      if @graphic.update_attributes(params[:graphic])
        format.html { redirect_to(@graphic, :notice => 'Graphic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graphics/1
  # DELETE /graphics/1.xml
  def destroy
    @graphic = Graphic.find(params[:id])
    @graphic.destroy

    respond_to do |format|
      format.html { redirect_to(graphics_url) }
      format.xml  { head :ok }
    end
  end
end