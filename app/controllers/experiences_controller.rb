class ExperiencesController < ApplicationController
  # GET /experiences
  # GET /experiences.json

  # POST /experiences
  # POST /experiences.json
  def create
   begin
    @company = current_user.companies.find(params[:company_id])
   # @company = Company.find(params[:company_id])
    @experience = @company.experiences.create(params[:experience])
    redirect_to company_path(@company)
   rescue Exception => e
     render :action => 'error'
   end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
   if(current_user.role == "admin")
     @company = Company.find(params[:company_id])
     @experience = @company.experiences.find(params[:id])
     @experience.destroy
     redirect_to company_path(@company)
   else
    begin
      @company = current_user.companies.find(params[:company_id])
      @experience = @company.experiences.find(params[:id])
      @experience.destroy
      redirect_to company_path(@company)
    rescue Exception => e
      render :action => 'error'
    end
   end
  end
end
