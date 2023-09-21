module Api
  module V1
    class ItemsController < ApplicationController
      def index
        @items = Item.all
        render json: @items, status: :ok
      end

      def show
        @item = Item.find(params[:id])
        render json: @item, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Item not found' }, status: :not_found
      end

      def create
        @item = Item.new(item_params)
        if @item.save
          render json: @item, status: :created
        else
          render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
          render json: @item, status: :ok
        else
          render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Item not found' }, status: :not_found
      end

      def destroy
        @item = Item.find(params[:id])
        @item.reservations.destroy_all
        @item.destroy
        head :no_content
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Item not found' }, status: :not_found
      end

      private

      def item_params
        params.require(:item).permit(:name, :image, :description, :deposit, :finance_fee, :option_to_purchase_fee,
                                     :total_amount_payable, :duration)
      end
    end
  end
end
