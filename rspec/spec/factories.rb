FactoryGirl.define do
	factory :weapon do
		name Faker::Lorem.word
		damage Faker::Number.number(2).to_i
		durability Faker::Number.number(2).to_i
	end
end
