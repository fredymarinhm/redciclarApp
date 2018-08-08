module Api
    module V1
        class StoresController < ApiApplicationController
             before_action :authenticate_request!
        
            def index
                stores = Store.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de stores', data: stores}, status: :ok
            end
            def show
                stores = Store.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de stores', data: stores}, status: :ok
            end
            def create 
               
            end

            def destroy 
               
            end

            def update 
          
            end
        end
    end
end