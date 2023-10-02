class ItemSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :created_at, :updated_at, :description, :deposit, :finance_fee, :option_to_purchase_fee,
             :total_amount_payable, :duration, :removed, :image_url
end
