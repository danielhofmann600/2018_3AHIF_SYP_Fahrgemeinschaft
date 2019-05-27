factory :route do |r|
  r.destination {Faker::Name.first_name }
  r.departure { Faker::Name.first_name}
  r.kilometers {30}
end

factory :route do |f|
  f.destination nil
end
