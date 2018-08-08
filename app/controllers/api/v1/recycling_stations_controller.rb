module Api
    module V1
        class RecyclingStationsController < ApiApplicationController
            before_action :authenticate_request!
        
            def index
                recyclingStations = RecyclingStation.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de centro', data: recyclingStations}, status: :ok
            end
            def show
                recyclingStations = RecyclingStation.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Carga de centro', data: recyclingStations}, status: :ok
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