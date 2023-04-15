FactoryBot.define do
  factory :group do
    id { 1 }
    name { 'groceries' }
    after(:build) do |group|
      group.icon.attach(io: File.open(Rails.root.join('spec', 'factories', 'images', 'mcdonald.png')),
                        filename: 'mcdonald.png', content_type: 'image/jpeg')
    end
  end
end
