class DaresController < ApplicationController
  # GET /dares
  # GET /dares.json
  def index
    @dares = Dare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dares }
    end
  end

  # GET /dares/1
  # GET /dares/1.json
  def show
    @dare = Dare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dare }
    end
  end

  # GET /dares/new
  # GET /dares/new.json
  def new
    @dare = Dare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dare }
    end
  end

  # GET /dares/1/edit
  def edit
    @dare = Dare.find(params[:id])
  end

  # POST /dares
  # POST /dares.json
  def create
    @dare = Dare.new(params[:dare])

    respond_to do |format|
      if @dare.save
        format.html { redirect_to @dare, notice: 'Dare was successfully created.' }
        format.json { render json: @dare, status: :created, location: @dare }
      else
        format.html { render action: "new" }
        format.json { render json: @dare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dares/1
  # PUT /dares/1.json
  def update
    @dare = Dare.find(params[:id])

    respond_to do |format|
      if @dare.update_attributes(params[:dare])
        format.html { redirect_to @dare, notice: 'Dare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dares/1
  # DELETE /dares/1.json
  def destroy
    @dare = Dare.find(params[:id])
    @dare.destroy

    respond_to do |format|
      format.html { redirect_to dares_url }
      format.json { head :no_content }
    end
  end
end
