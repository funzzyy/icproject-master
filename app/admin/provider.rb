ActiveAdmin.register Provider do

permit_params :first_name, :last_name, :birth_date, :phone_number, :id_number, :fiscal_number, :email, :address
end