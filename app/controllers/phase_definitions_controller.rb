class PhaseDefinitionsController < ApplicationController
  # GET /phase_definitions
  # GET /phase_definitions.xml
  def index
    @phase_definitions = PhaseDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @phase_definitions }
    end
  end

  # GET /phase_definitions/1
  # GET /phase_definitions/1.xml
  def show
    @phase_definition = PhaseDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @phase_definition }
    end
  end

  # GET /phase_definitions/new
  # GET /phase_definitions/new.xml
  def new
    @phase_definition = PhaseDefinition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @phase_definition }
    end
  end

  # GET /phase_definitions/1/edit
  def edit
    @phase_definition = PhaseDefinition.find(params[:id])
  end

  # POST /phase_definitions
  # POST /phase_definitions.xml
  def create
    @phase_definition = PhaseDefinition.new(params[:phase_definition])

    respond_to do |format|
      if @phase_definition.save
        format.html { redirect_to(@phase_definition, :notice => 'Phase definition was successfully created.') }
        format.xml  { render :xml => @phase_definition, :status => :created, :location => @phase_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @phase_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phase_definitions/1
  # PUT /phase_definitions/1.xml
  def update
    @phase_definition = PhaseDefinition.find(params[:id])

    respond_to do |format|
      if @phase_definition.update_attributes(params[:phase_definition])
        format.html { redirect_to(@phase_definition, :notice => 'Phase definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @phase_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phase_definitions/1
  # DELETE /phase_definitions/1.xml
  def destroy
    @phase_definition = PhaseDefinition.find(params[:id])
    @phase_definition.destroy

    respond_to do |format|
      format.html { redirect_to(phase_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
