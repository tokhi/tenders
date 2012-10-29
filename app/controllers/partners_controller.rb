class PartnersController < ApplicationController

  # POST /partners
  # POST /partners.json
  def create
  if(current_user.role == "admin")
	@company = Company.find(params[:company_id])
	@partner = @company.partners.create(params[:partner])
	redirect_to company_path(@company)

  else
  begin
 @company = current_user.companies.find(params[:company_id])
@partner = @company.partners.create(params[:partner])
 redirect_to company_path(@company)
  rescue Exception => e
render :action => 'error'
# flash[:error] = "Permission Denied!"
#redirect_to company_path(@company)
end
end
#  @company = Company.find(params[:company_id])
# @partner = @company.partners.create(params[:partner])
# redirect_to company_path(@company)


  end

  # DELETE /partners/1
  # DELETE /partners/1.json
  def destroy
if(current_user.role == "admin")
   @company = Company.find(params[:company_id])
   @partner = @company.partners.find(params[:id])
    @partner.destroy
   redirect_to company_path(@company)
else
  begin
   @company = current_user.companies.find(params[:company_id])
   #@company = Company.find(params[:company_id])
   @partner = @company.partners.find(params[:id])
    @partner.destroy
   redirect_to company_path(@company)
  rescue Exception => e
   render :action => 'error' 
 end
end

#    respond_to do |format|
 #     format.html { redirect_to partners_url }
  #    format.json { head :ok }
   # end
  end
end
