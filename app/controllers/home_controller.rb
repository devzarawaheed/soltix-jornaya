class HomeController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    respond_to do |format|
      if @lead.save
        format.html do
          redirect_to new_home_path,
                      notice: 'Data submitted successfully!'
        end
        format.json { render :new, status: :ok, location: @lead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :email, :phone_no, :universal_leadid, :leadid_tcpa_disclosure, :terms_and_policy)
  end
end
