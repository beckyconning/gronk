class ActionGraphicsController < ApplicationController
  # GET /action_graphics
  # GET /action_graphics.xml
  def index
    @action_graphics = ActionGraphic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @action_graphics }
    end
  end

  # GET /action_graphics/1
  # GET /action_graphics/1.xml
  def show
    @action_graphic = ActionGraphic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @action_graphic }
    end
  end

  # GET /action_graphics/new
  # GET /action_graphics/new.xml
  def new
    @action_graphic = ActionGraphic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @action_graphic }
    end
  end

  # GET /action_graphics/1/edit
  def edit
    @action_graphic = ActionGraphic.find(params[:id])
  end

  # POST /action_graphics
  # POST /action_graphics.xml
  def create
    @action_graphic = ActionGraphic.new(params[:action_graphic])

    respond_to do |format|
      if @action_graphic.save
        format.html { redirect_to(@action_graphic, :notice => 'Action graphic was successfully created.') }
        format.xml  { render :xml => @action_graphic, :status => :created, :location => @action_graphic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @action_graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /action_graphics/1
  # PUT /action_graphics/1.xml
  def update
    @action_graphic = ActionGraphic.find(params[:id])

    respond_to do |format|
      if @action_graphic.update_attributes(params[:action_graphic])
        format.html { redirect_to(@action_graphic, :notice => 'Action graphic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @action_graphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /action_graphics/1
  # DELETE /action_graphics/1.xml
  def destroy
    @action_graphic = ActionGraphic.find(params[:id])
    @action_graphic.destroy

    respond_to do |format|
      format.html { redirect_to(action_graphics_url) }
      format.xml  { head :ok }
    end
  end
end
