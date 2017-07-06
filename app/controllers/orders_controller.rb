class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:user_id, :provider_id, :dateCreated, :finishDate, :cost, :address, :category_id, :service_id)
    end

  def currentDate
    @current_Time = DateTime.now
  end

  def filter_services_by_category
    @filtered_services = Service.all.where(category_id: params[:selected_category])
  end
end

