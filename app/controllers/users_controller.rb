class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    #@user = User.find(params[:id])
    @user = current_user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

      if @user.save
	redirect_to companies_path, :notice => 'User successfully created.'
      else
        render action: "new" 
      end

  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    #@user = User.find(params[:id])
    @user = current_user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
