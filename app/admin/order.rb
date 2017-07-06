ActiveAdmin.register Order do

  permit_params :user_id, :provider_id, :dateCreated, :finishDate, :cost, :address, :service_id

end