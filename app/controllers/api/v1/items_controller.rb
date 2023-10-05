module Api
  module V1
    class ItemsController < ApplicationController
      before_action :set_item, only: %i[show update destroy]

      # GET /items
      def index
        @items_raw = Item.order(created_at: :desc).all
        @items = []

        @items_raw.each do |item|
          @items << ItemSerializer.new(item).serializable_hash[:data][:attributes]
        end

        render json: @items
      end

      # GET /items/1
      def show
        render json: ItemSerializer.new(@item).serializable_hash[:data][:attributes]
      end

      # POST /items
      def create
        @item = Item.new(item_params)
        @item.removed = false

        if @item.save
          render json: @item, status: :created, location: api_v1_item_url(@item)
        else
          render json: @item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /items/1
      def update
        if @item.update(item_params)
          render json: @item
        else
          render json: @item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /items/1
      def destroy
        @item.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = Item.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def item_params
        params.require(:item).permit(:name, :image, :description, :deposit, :finance_fee, :option_to_purchase_fee,
                                     :total_amount_payable, :duration, :removed)
      end
    end
  end
end
