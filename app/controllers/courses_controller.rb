class CoursesController < ApplicationController
  respond_to :js, :html
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
	@subjects = Subject.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end
  def by_subject
  #req = Rack::Request.new(env)
  #raise "#{req.inspect}"
    @courses = Course.where(:subject_id => params[:subject_id])
	#logger.debug "#{ @courses.inspect }"
    respond_to do |format| 
	  format.js 
      format.json { render json: @courses }
	  format.html 
    end
  end
  
  def add_response
    @response = Response.new(params[:response])
	@response.user_id = current_user.id
	@response.course_id = params[:id]
    respond_to do |format|
      render :partial =>  # new.html.erb
      format.json { render json: @request }
    end
  end
  
  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
	@subjects = Subject.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :ok }
    end
  end
end
