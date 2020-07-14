10.times do
    Library.create({
        title: Faker::Book.title,
        description: Faker::Lorem.sentence
    })
end