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

  sequence :from do |n|
    "otkogo#{n}@mail.ru"
  end

  sequence :to do |n|
    "komu#{n}@mail.ru"
  end

  sequence :subject do |n|
    "tema pisma"
  end
end
