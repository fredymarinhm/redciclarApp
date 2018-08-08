module Api
    module V1
        class OrdersController < ApiApplicationController
            before_action :authenticate_request!
            def index
                orders = Order.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de ordenes', data: orders}, status: :ok
            end
            def show
                orders = Order.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de ordenes', data: orders}, status: :ok
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