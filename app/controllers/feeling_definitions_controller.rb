class FeelingDefinitionsController < ApplicationController
  # GET /feeling_definitions
  # GET /feeling_definitions.xml
  def index
    @feeling_definitions = FeelingDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feeling_definitions }
    end
  end

  # GET /feeling_definitions/1
  # GET /feeling_definitions/1.xml
  def show
    @feeling_definition = FeelingDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feeling_definition }
    end
  end

  # GET /feeling_definitions/new
  # GET /feeling_definitions/new.xml
  def new
    @feeling_definition = FeelingDefinition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feeling_definition }
    end
  end

  # GET /feeling_definitions/1/edit
  def edit
    @feeling_definition = FeelingDefinition.find(params[:id])
  end

  # POST /feeling_definitions
  # POST /feeling_definitions.xml
  def create
    @feeling_definition = FeelingDefinition.new(params[:feeling_definition])

    respond_to do |format|
      if @feeling_definition.save
        format.html { redirect_to(@feeling_definition, :notice => 'Feeling definition was successfully created.') }
        format.xml  { render :xml => @feeling_definition, :status => :created, :location => @feeling_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feeling_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feeling_definitions/1
  # PUT /feeling_definitions/1.xml
  def update
    @feeling_definition = FeelingDefinition.find(params[:id])

    respond_to do |format|
      if @feeling_definition.update_attributes(params[:feeling_definition])
        format.html { redirect_to(@feeling_definition, :notice => 'Feeling definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feeling_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feeling_definitions/1
  # DELETE /feeling_definitions/1.xml
  def destroy
    @feeling_definition = FeelingDefinition.find(params[:id])
    @feeling_definition.destroy

    respond_to do |format|
      format.html { redirect_to(feeling_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
