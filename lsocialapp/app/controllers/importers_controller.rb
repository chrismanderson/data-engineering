class ImportersController < ApplicationController
  # GET /importers
  # GET /importers.json
  def index
    @importers = Importer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @importers }
    end
  end

  # GET /importers/1
  # GET /importers/1.json
  def show
    @importer = Importer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @importer }
    end
  end

  # GET /importers/new
  # GET /importers/new.json
  def new
    @importer = Importer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @importer }
    end
  end

  # GET /importers/1/edit
  def edit
    @importer = Importer.find(params[:id])
  end

  # POST /importers
  # POST /importers.json
  def create
    @importer = Importer.new(params[:importer])

    respond_to do |format|
      if @importer.save
        format.html { redirect_to purchases_path, notice: 'Importer was successfully created.' }
        format.json { render json: @importer, status: :created, location: @importer }
      else
        format.html { render action: "new" }
        format.json { render json: @importer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /importers/1
  # PUT /importers/1.json
  def update
    @importer = Importer.find(params[:id])

    respond_to do |format|
      if @importer.update_attributes(params[:importer])
        format.html { redirect_to @importer, notice: 'Importer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @importer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importers/1
  # DELETE /importers/1.json
  def destroy
    @importer = Importer.find(params[:id])
    @importer.destroy

    respond_to do |format|
      format.html { redirect_to importers_url }
      format.json { head :ok }
    end
  end
end
