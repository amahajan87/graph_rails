FactoryBot.define do
    factory :order do
      sequence(:description) { |n| "Test Order #(#{n})" }
      sequence(:total) { 100.00 }
      payment
    end

    factory :payment do
        sequence(:amount) { |n| 100.00 }
        sequence(:status) { |n| "Confirmed" }
      end
  end