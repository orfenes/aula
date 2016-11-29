namespace :utils do
  desc "Popular banco de dados"
  task seed: :environment do

    puts "---------------------------------------"
    puts "Gerando os contato....(Contacts)"
    10.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: Faker::Lorem.paragraph([1,2,3].sample)
      )
    end
    puts "Gerado Contacts....[Ok]"


    puts "-----------------------------"
    puts "Gerando os endereços.......(Addresses)"
    Contact.all.each do |contact|
      Andress.create!(
        street: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        contact: contact
      )
    end
    puts "Gerado Andresses.....[Ok]"

    puts "--------------------"
    puts "Gerando os telefones dos contatos.......(Phone)"
    Contact.all.each do |contact|
      Random.rand(1..5).times do |i|
        Phone.create!(
          phone: Faker::PhoneNumber.phone_number,
          contact:contact
        )
      end
    end
    puts "Gerado Phone.....[Ok]"

  end

end