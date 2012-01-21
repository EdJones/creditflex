class ProposalTypesController < ApplicationController
  # GET /proposal_types
  # GET /proposal_types.json
  def index
    @proposal_types = ProposalType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposal_types }
    end
  end

  # GET /proposal_types/1
  # GET /proposal_types/1.json
  def show
    @proposal_type = ProposalType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposal_type }
    end
  end

  # GET /proposal_types/new
  # GET /proposal_types/new.json
  def new
    @proposal_type = ProposalType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proposal_type }
    end
  end

  # GET /proposal_types/1/edit
  def edit
    @proposal_type = ProposalType.find(params[:id])
  end

  # POST /proposal_types
  # POST /proposal_types.json
  def create
    @proposal_type = ProposalType.new(params[:proposal_type])
	@proposal_types = ProposalType.all

    respond_to do |format|
      if @proposal_type.save
        format.html { redirect_to @proposal_type, notice: 'Proposal type was successfully created.' }
        format.json { render json: @proposal_type, status: :created, location: @proposal_type }
      else
        format.html { render action: "new" }
        format.json { render json: @proposal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proposal_types/1
  # PUT /proposal_types/1.json
  def update
    @proposal_type = ProposalType.find(params[:id])

    respond_to do |format|
      if @proposal_type.update_attributes(params[:proposal_type])
        format.html { redirect_to @proposal_type, notice: 'Proposal type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @proposal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposal_types/1
  # DELETE /proposal_types/1.json
  def destroy
    @proposal_type = ProposalType.find(params[:id])
    @proposal_type.destroy

    respond_to do |format|
      format.html { redirect_to proposal_types_url }
      format.json { head :ok }
    end
  end
end
