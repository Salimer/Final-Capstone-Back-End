module Api
  module V1
    class ReservationsController < ApplicationController
      def index
        @reservations = Reservation.all
        render json: @reservations, status: :ok
      end

      def show
        @reservation = Reservation.find(params[:id])
        render json: @reservation, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Reservation not found' }, status: :not_found
      end

      def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
          render json: @reservation, status: :created
        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      private

      def reservation_params
        params.require(:reservation).permit(:user_id, :item_id, :city, :date)
      end
    end
  end
end
