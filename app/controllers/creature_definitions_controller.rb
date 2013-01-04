class CreatureDefinitionsController < ApplicationController
  # GET /creature_definitions
  # GET /creature_definitions.xml
  
  def index
    @creature_definitions = CreatureDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @creature_definitions }
    end
  end

  # GET /creature_definitions/1
  # GET /creature_definitions/1.xml
  def show
    @creature_definition = CreatureDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @creature_definition }
    end
  end

  # GET /creature_definitions/new
  # GET /creature_definitions/new.xml
  def new
    @creature_definition = CreatureDefinition.new
    @phases = PhaseDefinition.all
    @creature_definition.build_graphic
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @creature_definition }
    end
  end

  # GET /creature_definitions/1/edit
  def edit
    @creature_definition = CreatureDefinition.find(params[:id])
    @phases = PhaseDefinition.all
    @creature_definition.graphic ||= Graphic.new
  end

  # POST /creature_definitions
  # POST /creature_definitions.xml
  def create
    @creature_definition = CreatureDefinition.new(params[:creature_definition])
    respond_to do |format|
      if @creature_definition.save
        format.html { redirect_to(@creature_definition, :notice => 'Creature definition was successfully created.') }
        format.xml  { render :xml => @creature_definition, :status => :created, :location => @creature_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @creature_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /creature_definitions/1
  # PUT /creature_definitions/1.xml
  def update
    @creature_definition = CreatureDefinition.find(params[:id])

    respond_to do |format|
      if @creature_definition.update_attributes(params[:creature_definition])
        format.html { redirect_to(@creature_definition, :notice => 'Creature definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @creature_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /creature_definitions/1
  # DELETE /creature_definitions/1.xml
  def destroy
    @creature_definition = CreatureDefinition.find(params[:id])
    @creature_definition.destroy

    respond_to do |format|
      format.html { redirect_to(creature_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
