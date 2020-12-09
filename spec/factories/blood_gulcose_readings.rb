FactoryBot.define do
  factory :blood_gulcose_reading do
    association :user    # <<<--- here the change
    value {rand(10 ** 1)}
    reading_type {0}
    date {Date.today}
  end
end
