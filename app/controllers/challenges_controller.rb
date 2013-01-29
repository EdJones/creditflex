class ChallengesController < ApplicationController
  require 'rubygems'
  require 'mini_magick'

  # GET /challenges
  # GET /challenges.json
  def index
    @challenges = Challenge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @challenges }
    end
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @challenge }
    end
  end

  # GET /challenges/new
  # GET /challenges/new.json
  def new
   @challenge = Challenge.new
#@wish = Wish.find(params[:id])
@wish = Wish.find(1)

subject = "Sciencing"
image = MiniMagick::Image.open("#{Rails.root}/app/assets/images/badges/quarter.png")
image.combine_options do |c|
	c.font "helvetica"
	c.fill "white"
	c.pointsize '20'
	c.gravity "center"
	c.draw "text 0,0 '#{subject}'"
	end
image.write  "public/output.jpg"

#variable = "Science"

#mm = MiniMagick::Image.open("#{Rails.root}/app/assets/images/badges/quarter.png")
  #$mm.combine_options do |c| 
    #c.gravity 'center' 
    #c.pointsize '13' 
    #c.draw "text 33,0 '#{variable}'" 
  #end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @challenge }
    end
  end

  def add_challenge
    @challenge = Challenge.new
#@wish = Wish.find(params[:id])
@wish = Wish.find(1)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @challenge }
    end
  end


  # GET /challenges/1/edit
  def edit
    @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @challenge = Challenge.new(params[:challenge])

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render json: @challenge, status: :created, location: @challenge }
      else
        format.html { render action: "new" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /challenges/1
  # PUT /challenges/1.json
  def update
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :no_content }
    end
  end
end
