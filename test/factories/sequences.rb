FactoryGirl.define do
  sequence :first_name do |n|
    "Sanya#{n}"
  end

  sequence :last_name do |n|
    "Geymer#{n}"
  end

  sequence :email do |n|
    "test#{n}@mail.ru"
  end

  sequence :password do |n|
    "123qw#{n}"
  end
end