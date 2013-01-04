class ItemDefinitionsController < ApplicationController
  # GET /item_definitions
  # GET /item_definitions.xml
  def index
    @item_definitions = ItemDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_definitions }
    end
  end

  # GET /item_definitions/1
  # GET /item_definitions/1.xml
  def show
    @item_definition = ItemDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_definition }
    end
  end

  # GET /item_definitions/new
  # GET /item_definitions/new.xml
  def new
    @item_definition = ItemDefinition.new
    @item_definition.build_graphic
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_definition }
    end
  end

  # GET /item_definitions/1/edit
  def edit
    @item_definition = ItemDefinition.find(params[:id])
  end

  # POST /item_definitions
  # POST /item_definitions.xml
  def create
    @item_definition = ItemDefinition.new(params[:item_definition])

    respond_to do |format|
      if @item_definition.save
        format.html { redirect_to(@item_definition, :notice => 'Item definition was successfully created.') }
        format.xml  { render :xml => @item_definition, :status => :created, :location => @item_definition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_definitions/1
  # PUT /item_definitions/1.xml
  def update
    @item_definition = ItemDefinition.find(params[:id])

    respond_to do |format|
      if @item_definition.update_attributes(params[:item_definition])
        format.html { redirect_to(@item_definition, :notice => 'Item definition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_definition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_definitions/1
  # DELETE /item_definitions/1.xml
  def destroy
    @item_definition = ItemDefinition.find(params[:id])
    @item_definition.destroy

    respond_to do |format|
      format.html { redirect_to(item_definitions_url) }
      format.xml  { head :ok }
    end
  end
end
