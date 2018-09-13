class ApplicantsController < ApplicationController

#for a live app, stronger parameters would be implemented using private methods
	def add_applicant

		@applicant = Applicant.create(name: params[:name], email: params[:email], applicant_id: params[:applicant_id],
			company_id: params[:company_id])
		@company = User.where(id: params[:company_id])
		if @applicant.save
			flash[:alert] = "Congratulations, You Have Succesfully Applied to #{@company.take.name}"
			redirect_to root_path
		else
			redirect_to root_path
		end

	end

end
