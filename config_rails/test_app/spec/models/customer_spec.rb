require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name' do
    customer = create(:users)

    expect(customer.full_name).to start_with('Sr. ')
  end

  it '#full_name customizado' do
    customer = create(:customer_vip_false)

    expect(customer.vip).to be_falsey
    
  end
end
