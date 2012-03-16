class RequestsController < ApplicationController
before_filter :require_login, :only => [:add_response, :create]



  def add_response
    @response = Response.new(params[:response])
	@response.user_id = current_user.id
	@response.request_id = params[:id]
    respond_to do |format|
      render :partial =>  # new.html.erb
	  format.js
      format.json 
    end
  end






  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requests }
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @request = Request.find(params[:id])
	@responses = Response.where(:request_id => params[:id])
	@response_new = Response.new(params[:response])
	if current_user 
	then @response_new.user_id = current_user.id 
	else 
	@response_new.user_id = 8 
	end 
	@response_new.request_id = params[:id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @request }
    end
  end
def up_vote
logger.info "*************************************************************"
logger.debug "params[:id]: #{params[:id]}"
@request = Request.find(params[:id])
	current_user.up_vote!(@request)
	
    respond_to do |format|
	@requests = Request.all
      format.html {render action: "index"} # index.html.erb
      format.json { render json: @requests }
	end
end
  # GET /requests/new
  # GET /requests/new.json
  def new
	#authorize! :create, Request, :message => "Must login to add a request."
    @request = Request.new
	#@request.user_id = current_user.id if current_user != nil else @request.user_id = 8
		if current_user 
	then @request.user_id = current_user.id 
	else 
	@request.user_id = 8 
	end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(params[:request])

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render json: @request, status: :created, location: @request }
      else
        format.html { render action: "new" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requests/1
  # PUT /requests/1.json
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :ok }
    end
  end
end

private

  def require_login
    unless current_user
      redirect_to login_path
    end
  end
