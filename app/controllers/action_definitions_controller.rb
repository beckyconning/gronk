class ActionDefinitionsController < ApplicationController
  # GET /action_definitions
  # GET /action_definitions.xml
  def index
    @action_definitions = ActionDefinition.all
    @feeling_definitions = FeelingDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @action_definitions }
    end
  end

  # GET /action_definitions/1
  # GET /action_definitions/1.xml
  def show
    @action_definition = ActionDefinition.find(params[:id])
    @feeling_definitions = FeelingDefinition.all
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @action_definition }
    end
  end

  # GET /action_definitions/new
  # GET /action_definitions/new.xml
  def new
    @action_definition = ActionDefinition.new
    @action_definition.effects.build
    @feeling_definitions = FeelingDefinition.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @action_definition }
    end
  end

  # GET /action_definitions/1/edit
  def edit
    @action_definition = ActionDefinition.find(params[:id])
    @feeling_definitions = FeelingDefinition.all
    
  end

  # POST /action_definitions
  # POST /action_definitions.xml
  def create
    @action_definition = ActionDefinition.new(params[:action_definition])
    @feeling_definitions = FeelingDefinition.all

    respond_to do |format|
      if @action_definition.save
        format.html { redirect_to(@action_definition, :notice => 'Action definition was successfully created.') }
        format.xml  { render :xml => @action_definition, :status => :created, :location => @action_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @action_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /action_definitions/1
  # PUT /action_definitions/1.xml
  def update
    @action_definition = ActionDefinition.find(params[:id])
    @feeling_definitions = FeelingDefinition.all

    respond_to do |format|
      if @action_definition.update_attributes(params[:action_definition])
        format.html { redirect_to(@action_definition, :notice => 'Action definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @action_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /action_definitions/1
  # DELETE /action_definitions/1.xml
  def destroy
    @action_definition = ActionDefinition.find(params[:id])
    @action_definition.destroy
    @feeling_definitions = FeelingDefinition.all

    respond_to do |format|
      format.html { redirect_to(action_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
