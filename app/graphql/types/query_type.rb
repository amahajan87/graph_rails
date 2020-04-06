module Types
  class QueryType < Types::BaseObject
    field :all_orders, [Types::OrderType], null: false
     
    field :order, [Types::OrderType], null: false do 
      argument :id, Integer, required: true
    end

    def all_orders
        Order.all
    end

    def order(id: )
      Order.where(id: id)
    end
  end
end
