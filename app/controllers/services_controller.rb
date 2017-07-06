class ServicesController < InheritedResources::Base



  private

    def service_params
      params.require(:service).permit(:name, :description, :category_id, :provider_id, :cost)
    end

end

