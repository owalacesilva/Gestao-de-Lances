FactoryBot.define do
  factory :admin do
    status { Admin.statuses[:actived]  }
    display_name { Faker::Name.name  }
    phone_number { Faker::PhoneNumber.phone_number  }
    email { Faker::Internet.email  }
    password { '123456'  }
  end
end
