require 'rails_helper'

RSpec.describe Types::OrderType do
    subject { described_class }

    types = GraphQL::Define::TypeDefiner.instance
  
    it { is_expected.to have_field(:id).that_returns(!types.ID) }
  
    it { is_expected.to have_field(:description).that_returns(!types.String) }

    it { is_expected.to have_field(:total).that_returns(!types.Float) }

    it { is_expected.to have_field(:payments_count).that_returns(!types.Int) }

    it { is_expected.to have_field(:payments).that_returns('[Payment!]!') }

    it { is_expected.to have_field(:successful_payments).that_returns('[Payment!]!') }
end