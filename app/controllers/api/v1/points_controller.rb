module Api
    module V1
        class PointsController < ApiApplicationController
            before_action :authenticate_request!

            def index
                points = Point.order('created_at DESC').where user_id: current_user.id
                render json: {status: 'SUCCESS', message: 'Carga de puntos', data: points}, status: :ok
            end
            def show
                point = Point.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Carga la imagen', data: point}, status: :ok
            end
            def create 
               
            end

            def destroy 
               
            end

            def update 
          
            end
            
            private

            def point_params
                params.permit(:date, :amount)
            end
        end
    end
end