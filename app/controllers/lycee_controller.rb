class LyceeController < ApplicationController

   def index
    @proposals = Proposal.all
	@courses = Course.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposals }
    end
  end
end
