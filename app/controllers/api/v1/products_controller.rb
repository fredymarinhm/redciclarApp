module Api
    module V1
        class ProductsController < ApiApplicationController
             before_action :authenticate_request!
        
            def index
                products = Product.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de productos', data: products}, status: :ok
            end
            def show
                products = Product.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de productos', data: products}, status: :ok
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