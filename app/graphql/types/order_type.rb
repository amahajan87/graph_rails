module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: false
    field :total, Float, null: false
    field :payments, [Types::PaymentType], null: false
    field :payments_count, Int, null: false
    field :successful_payments, [Types::PaymentType], null: false

    def payments_count
        object.payments.size
    end

    def successful_payments
        object.payments.successful
    end
  end
end
