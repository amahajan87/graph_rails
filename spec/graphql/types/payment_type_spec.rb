require 'rails_helper'

RSpec.describe Types::PaymentType do
    types = GraphQL::Define::TypeDefiner.instance
    
    subject { described_class }
  
    it { is_expected.to have_field(:id).that_returns(!types.ID) }
  
    it { is_expected.to have_field(:amount).that_returns(!types.Float) }

    it { is_expected.to have_field(:status).that_returns(!types.String) }
end