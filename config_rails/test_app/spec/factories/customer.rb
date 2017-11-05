FactoryBot.define do
  factory :customer, aliases: [:users] do
    name Faker::Name.name
    email Faker::Internet.email

    factory 'customer_vip' do
      vip true
      day_to_pay 30
    end

    factory 'customer_vip_false' do
      vip false
      day_to_pay 30
    end

  end
end