class WishesController < ApplicationController
  # GET /wishes
  # GET /wishes.json
  def index
    #@wishes = Wish.last(4).reverse
	@wishes = Wish.all.reverse
	@projects = Project.all
	@wish = Wish.new
	logger.debug "Wish: #{ @wish.inspect }"
	@wish.user_id = 1
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishes }
    end
  end

  def wish_stream
    #@wishes = Wish.last(4).reverse
	@wishes = Wish.all.reverse
	
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
  logger.debug "Params[]: #{ params.inspect }"
  @echo = Echo.new
  @echo.wish_id = params[:id]
  logger.debug "current_user #{ current_user.inspect }"
  @echo.user_id = current_user.id
  logger.debug "Echo: #{ @echo.inspect }"
  @wishes = Wish.all.reverse
      respond_to do |format|
      if @echo.save
	  logger.debug "echo saved"
        format.html { logger.debug "html!" }
		#{ render action: "index", notice: 'Echo was successfully created.' }
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
	#logger.debug "Wish: #{ @wish.inspect }"
	@wish = Wish.find( params[:id] )
	@challenge = @wish.challenge
    @challenge = @wish.challenge
	@user = @wish.user
     respond_to do |format|
       format.html  # show.html.erb
       format.js 
     end
  end

  def share_challenge()
	@wish = Wish.find( params[:id] )
	@user = @wish.user
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

  # GET /wishes/new
  # GET /wishes/new.json
  def new
    @wish = Wish.new

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
