FactoryBot.define do
  factory :auction do
    status { Auction.statuses[:created]  }
    title { Faker::Vehicle.manufacture  }
    start_date { Date.today  }
    end_date { Faker::Date.forward(days: 15)  }
    opening_bid { Faker::Number.decimal(l_digits: 6, r_digits: 2)  }
    modality { 'online'  }
    description { Faker::Lorem.sentence(word_count: 15)  }
    important_notices { Faker::Lorem.sentence(word_count: 10)  }

    postal_code { Faker::Address.postcode }
    street_address { Faker::Address.street_name }
    street_number { Faker::Address.building_number }
    neighborhood { Faker::Address.community }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country_code }

    # Associations
    association :admin, factory: :admin
  end
end
