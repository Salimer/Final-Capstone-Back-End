FactoryBot.define do
  factory :item do
    name { 'Test Item' }
    description { 'Test Description' }
    deposit { 100 }
    finance_fee { 10 }
    option_to_purchase_fee { 5 }
    total_amount_payable { 115 }
    duration { 12 }
  end
end
