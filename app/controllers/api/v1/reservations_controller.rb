module Api
  module V1
    class ReservationsController < ApplicationController
      def index
        @reservations = Reservation.order(created_at: :desc).all
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

      def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy
        head :no_content
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Reservation not found' }, status: :not_found
      end

      def user_reservations
        user = User.find(params[:user_id])
        @reservations = user.reservations.order(created_at: :desc)
        render json: @reservations, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Reservations not found' }, status: :not_found
      end

      def user_items
        user = User.find(params[:user_id])
        @user_items = user.items
        render json: @user_items, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Items not found' }, status: :not_found
      end

      private

      def reservation_params
        params.require(:reservation).permit(:user_id, :item_id, :city, :date)
      end
    end
  end
end
