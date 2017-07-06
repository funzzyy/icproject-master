class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :phone_number, :id_number, :fiscal_number, :email, :password, :remember_me)
    params.require(:provider).permit(:fist_name, :last_name, :birth_date, :phone_number, :id_number, :fiscal_number, :email, :password, :remember_me, :address, :job)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :phone_number, :id_number, :fiscal_number, :email, :password, :remember_me, :current_password)
    params.require(:provider).permit(:fist_name, :last_name, :birth_date, :phone_number, :id_number, :fiscal_number, :email, :password, :remember_me, :address)
  end

end