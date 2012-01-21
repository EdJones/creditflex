class ProposalStatusesController < ApplicationController
  # GET /proposal_statuses
  # GET /proposal_statuses.json
  def index
    @proposal_statuses = ProposalStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposal_statuses }
    end
  end

  # GET /proposal_statuses/1
  # GET /proposal_statuses/1.json
  def show
    @proposal_status = ProposalStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposal_status }
    end
  end

  # GET /proposal_statuses/new
  # GET /proposal_statuses/new.json
  def new
    @proposal_status = ProposalStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proposal_status }
    end
  end

  # GET /proposal_statuses/1/edit
  def edit
    @proposal_status = ProposalStatus.find(params[:id])
  end

  # POST /proposal_statuses
  # POST /proposal_statuses.json
  def create
    @proposal_status = ProposalStatus.new(params[:proposal_status])

    respond_to do |format|
      if @proposal_status.save
        format.html { redirect_to @proposal_status, notice: 'Proposal status was successfully created.' }
        format.json { render json: @proposal_status, status: :created, location: @proposal_status }
      else
        format.html { render action: "new" }
        format.json { render json: @proposal_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proposal_statuses/1
  # PUT /proposal_statuses/1.json
  def update
    @proposal_status = ProposalStatus.find(params[:id])

    respond_to do |format|
      if @proposal_status.update_attributes(params[:proposal_status])
        format.html { redirect_to @proposal_status, notice: 'Proposal status was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @proposal_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposal_statuses/1
  # DELETE /proposal_statuses/1.json
  def destroy
    @proposal_status = ProposalStatus.find(params[:id])
    @proposal_status.destroy

    respond_to do |format|
      format.html { redirect_to proposal_statuses_url }
      format.json { head :ok }
    end
  end
end
