class LyceeController < ApplicationController

   def index
    @projects= Project.all
    @requests = Request.all
    @proposals = Proposal.all
	@courses = Course.all
	@teachers = Teacher.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposals }
    end
  end
end
