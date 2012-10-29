class BidsController < ApplicationController
before_filter :authenticate, :except => [:index, :show]
  # GET /bids
  # GET /bids.json
  def index
  #  @bids = Bid.all
   #@bids = Bid.order("opening_date DESC")
   @bids = Bid.order("opening_date DESC").paginate(page: params[:page], per_page: 10)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bids }
    end
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @bid = Bid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/new
  # GET /bids/new.json
  def new
    @bid = Bid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/1/edit
  def edit
   # @bid = Bid.find(params[:id])
   begin
    @bid = current_user.bids.find(params[:id])
   rescue Exception => e
    render :action => 'error'
   end
  end

  # POST /bids
  # POST /bids.json
  def create
   # @bid = Bid.new(params[:bid])
   @bid = current_user.bids.new(params[:bid])
    uploader = AttachmentUploader.new
    #uploader.store!(my_file)

    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render json: @bid, status: :created, location: @bid }
      else
        format.html { render action: "new" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bids/1
  # PUT /bids/1.json
  def update
#    @bid = Bid.find(params[:id])
     @bid = current_user.bids.find([:id])
    respond_to do |format|
      if @bid.update_attributes(params[:bid])
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
#  def destroy
#    @bid = Bid.find(params[:id])
 #    @bid = current_user.bids.find(params[:id]) 
  # @bid.destroy

   # respond_to do |format|
    #  format.html { redirect_to bids_url }
     # format.json { head :ok }
   # end
 # end
 
 # truncate(@text, :length => 17)

#Excerpt is nice to know too, it lets you display an excerpt of a text Like so:

 #excerpt('This is an example', 'an', :radius => 5)
 
end
