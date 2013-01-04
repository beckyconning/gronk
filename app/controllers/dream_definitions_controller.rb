class DreamDefinitionsController < ApplicationController
  # GET /dream_definitions
  # GET /dream_definitions.xml
  def index
    @dream_definitions = DreamDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dream_definitions }
    end
  end

  # GET /dream_definitions/1
  # GET /dream_definitions/1.xml
  def show
    @dream_definition = DreamDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dream_definition }
    end
  end

  # GET /dream_definitions/new
  # GET /dream_definitions/new.xml
  def new
    @dream_definition = DreamDefinition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dream_definition }
    end
  end

  # GET /dream_definitions/1/edit
  def edit
    @dream_definition = DreamDefinition.find(params[:id])
  end

  # POST /dream_definitions
  # POST /dream_definitions.xml
  def create
    @dream_definition = DreamDefinition.new(params[:dream_definition])

    respond_to do |format|
      if @dream_definition.save
        format.html { redirect_to(@dream_definition, :notice => 'Dream definition was successfully created.') }
        format.xml  { render :xml => @dream_definition, :status => :created, :location => @dream_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dream_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dream_definitions/1
  # PUT /dream_definitions/1.xml
  def update
    @dream_definition = DreamDefinition.find(params[:id])

    respond_to do |format|
      if @dream_definition.update_attributes(params[:dream_definition])
        format.html { redirect_to(@dream_definition, :notice => 'Dream definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dream_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dream_definitions/1
  # DELETE /dream_definitions/1.xml
  def destroy
    @dream_definition = DreamDefinition.find(params[:id])
    @dream_definition.destroy

    respond_to do |format|
      format.html { redirect_to(dream_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
