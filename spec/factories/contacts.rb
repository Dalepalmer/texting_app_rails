FactoryGirl.define do
  factory(:contact) do
    sequence(:name) { |n| "Number #{n}" }
    number('11111111')
    user
  end
end
