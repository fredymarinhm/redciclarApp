module Api
    module V1
        class ItemsController < ApiApplicationController
            before_action :authenticate_request!
            def index
                items = Item.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de items', data: items}, status: :ok
            end
            def show
                items = Item.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de items', data: items}, status: :ok
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