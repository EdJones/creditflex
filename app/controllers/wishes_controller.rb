class WishesController < ApplicationController
  # GET /wishes
  # GET /wishes.json
  def index
	@projects = Project.all
	@wish = Wish.new
	@wish.user_id = current_user.id
	@wishes = Wish.wish_stream
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishes }
    end
  end

  def wish_stream
	@wishes = Wish.wish_stream
	logger.debug "Wishes: #{ @wishes.inspect }"
    respond_to do |format|
      format.html { logger.debug "html!" }
	  format.js { logger.debug "js!" }
      format.json { render json: @wishes }
    end
	
	
  end

    def confirm_echo
      @wish = Wish.find( params[:id] )
      respond_to do |format|
        format.html 
        format.js
    end
  end

  def echo
  @echo = Echo.new
  @echo.wish_id = params[:id]
  @echo.user_id = current_user.id
   respond_to do |format|
      if @echo.save
	    @wishes = Wish.wish_stream
		format.js 
        format.json { render json: @echo, status: :created, location: @echo }
      else
        format.html { render action: "wishes" }
        format.json { render json: @echo.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_challenge()
	#logger.debug "Params[:id]: #{ params[:id] }"
	#logger.debug "Params[]: #{ params.inspect }"
	@wish = Wish.find( params[:id] )
	@challenge = @wish.challenge
    @challenge = @wish.challenge
	@user = @wish.user

     respond_to do |format|
       format.html  
       format.js 
     end
  end

  def share_challenge()
	@wish = Wish.find( params[:id] )
	@user = @wish.user
	@dare = Dare.new
     respond_to do |format|
       format.html  
       format.js 
     end
  end

  def tweet()
  @wish = Wish.find( params[:id] )
  logger.debug "#{ @wish.username} challenged #{ params[:challengee]}to #{ @wish.wish} with Ohio Credit Flexibility. http://creditflexibility.org" 
  #Twitter.update("#{ @wish.user.user} challenges you to #{ @wish.wish} with Ohio Credit Flexibility.")

    #rescue Twitter::Error
    #  flash[:notice] = "ERROR with Twitter"
    #  redirect_to(:action => 'show')
     # return
     respond_to do |format|
       format.html  
       format.js 
     end
  end

  # GET /wishes/1
  # GET /wishes/1.json
  def show
    @wish = Wish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wish }
    end
  end
  
    def add_image
     # @wish = Wish.find( params[:id] )
      respond_to do |format|
        format.html 
        format.js
    end
  end

  # GET /wishes/new
  # GET /wishes/new.json
  def new
    @wish = Wish.new
	@wish.user_id = current_user.id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wish }
    end
  end

  # GET /wishes/1/edit
  def edit
    @wish = Wish.find(params[:id])
  end

  # POST /wishes
  # POST /wishes.json
  def create
    @wish = Wish.new(params[:wish])

    respond_to do |format|
      if @wish.save
        format.html { redirect_to @wish, notice: 'Wish was successfully created.' }
        format.json { render json: @wish, status: :created, location: @wish }
      else
        format.html { render action: "new" }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wishes/1
  # PUT /wishes/1.json
  def update
    @wish = Wish.find(params[:id])

    respond_to do |format|
      if @wish.update_attributes(params[:wish])
        format.html { redirect_to @wish, notice: 'Wish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishes/1
  # DELETE /wishes/1.json
  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy

    respond_to do |format|
      format.html { redirect_to wishes_url }
      format.json { head :no_content }
    end
  end
end
