# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# require 'faker'
# Examples:


puts "***--- SEEDING PROCESS ---***"

Feature.destroy_all
Review.destroy_all
Rent.destroy_all
Flat.destroy_all
Profile.destroy_all
User.destroy_all

Feature.create!(name: "television", fontawesome_logo: "<i class='fa fa-television' aria-hidden='true'></i>")
Feature.create!(name: "bed", fontawesome_logo: "<i class='fa fa-bed' aria-hidden='true'></i>")
Feature.create!(name: "wifi", fontawesome_logo: "<i class='fa fa-wifi' aria-hidden='true'></i>")
Feature.create!(name: "user", fontawesome_logo: "<i class='fa fa-users' aria-hidden='true'></i>")
Feature.create!(name: "document", fontawesome_logo: "<i class='fa fa-pencil-square-o' aria-hidden='true'></i>")
Feature.create!(name: "pet", fontawesome_logo: "<i class='fa fa-paw' aria-hidden='true'></i>")

puts "***--- USER PROCESS ---***"# USER & PROFILE CREATION


  user = User.create!(
    email: "aurelien@gmail.com",
    password: "123456"
  )
  prof = Profile.create!(
    first_name: "Aurélien",
    last_name: "Dobbels",
    address: "10 rue de Gand",
    post_code: 59800,
    city: "Lille",
    phone_number: nil,
    sex: "M",
    birth_date: 12101982,
    remote_photo_url: "http://res.cloudinary.com/dwkqph9as/image/upload/v1512130127/fpoonxdaz3et6ngzu82d.png",
    user_id: user.id,
  )

puts "***--- FLAT PROCESS ---***"# USER & PROFILE CREATION

Flat.create!(
    name:"Lorem ipsum dolor sit amet 1",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    category:"House",
    price: "100",
    capacity: "6",
    address:"19 rue de Gand",
    post_code:"59000",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/11/ROYAL_ROULOTTE_PARIS_16_DECORATION_RENOVATION_APPARTEMENT_08.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    category:"House",
    price: "120",
    capacity: "8",
    address:"73 rue Royale",
    post_code:"59800",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    category:"Flat",
    price: "90",
    capacity: "4",
    address:"23 rue Nationale",
    post_code:"59000",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2015/11/ROYAL_ROULOTTE_MONTREUIL_CUISINE_06.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    category:"Flat",
    price: "110",
    capacity: "3",
    address:"23 rue de Metz",
    post_code:"59000",
    city:"Lille",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_455ec9f18e2944339b2acb6145f6db9c~mv2_d_4096_2725_s_4_2.jpg/v1/fill/w_2083,h_1386,al_c,q_90,usm_0.66_1.00_0.01/8aa29f_455ec9f18e2944339b2acb6145f6db9c~mv2_d_4096_2725_s_4_2.webp",
    profile_id: prof.id
  )

Flat.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
    category:"Flat",
    price: "90",
    capacity: "4",
    address:"23 Avenue de l'Hyppodrome",
    post_code:"59230",
    city:"Lambersard",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_ffcbbdc54bcb4e31a62fb67b840bc094~mv2_d_3264_2448_s_4_2.jpg/v1/fill/w_1848,h_1386,al_c,q_90,usm_0.66_1.00_0.01/8aa29f_ffcbbdc54bcb4e31a62fb67b840bc094~mv2_d_3264_2448_s_4_2.webp",
    profile_id: prof.id
  )

Flat.create!(
    name:"Lorem ipsum dolor sit amet.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere purus ac ex volutpat, ut lobortis ligula.",
    category:"Flat",
    price: "90",
    capacity: "8",
    address:"23 Avenue des Saules",
    post_code:"59230",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/01/ROYAL_ROULOTTE_RENOVATION_DECORATION_MAISON_HOME_DECOR_FRANCE_PARIS_RAMBOUILLET_47.jpg",
    profile_id: prof.id
  )


Flat.create!(
    name:"vitae porttitor elit dui vitae felis.",
    description:"Nunc ornare auctor nibh, ac pellentesque neque ultricies rhoncus. Cras vehicula, odio eget pharetra varius, metus turpis efficitur erat, quis sagittis eros massa et leo.",
    category:"House",
    price: "120",
    capacity: "8",
    address:"23 Avenue des Saules",
    post_code:"59230",
    city:"Lille",
    remote_photo_url:"https://static.wixstatic.com/media/8aa29f_8ea8a57efadd4c85845833fb0a9ebe27~mv2.jpg/v1/fill/w_640,h_637,al_c,q_90/8aa29f_8ea8a57efadd4c85845833fb0a9ebe27~mv2.webp",
    profile_id: prof.id
  )

Flat.create!(
    name:"Maecenas porttitor lorem et accumsan vulputate",
    description:"Nulla molestie aliquet turpis, in ultrices sem egestas consequat. Morbi feugiat fermentum neque, sed rhoncus magna faucibus eget. Nulla eleifend lacus vitae placerat ornare.",
    category:"House",
    price: "90",
    capacity: "8",
    address:"23 Avenue des Saules",
    post_code:"59230",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_05.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"Curabitur faucibus arcu orci",
    description:"Vivamus ipsum massa, mollis id viverra tincidunt, rutrum sit amet magna. Suspendisse nibh risus, scelerisque id molestie vitae, tincidunt euismod lorem. Nam lacinia vestibulum velit nec congue. Aliquam scelerisque tortor eu odio iaculis viverra.",
    category:"Flat",
    price: "90",
    capacity: "8",
    address:"23 Avenue des Saules",
    post_code:"59230",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/06/ROYAL_ROULOTTE_RENOVATION_DECORATION_RUE_DIEU_CANAL_SAINT_MARTIN_PARIS_10_12.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"Lorem ipsum dolor sit amet 1",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    category:"House",
    price: "100",
    capacity: "6",
    address:"19 rue de Gand",
    post_code:"59000",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2016/11/ROYAL_ROULOTTE_PARIS_16_DECORATION_RENOVATION_APPARTEMENT_08.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"Lorem ipsum dolor sit amet",
    description:"Aliquam sit amet tortor nisi. Proin interdum turpis vitae enim varius, et interdum eros ullamcorper. Morbi venenatis ac odio et luctus. Etiam ultricies diam ipsum, tempor fringilla ante suscipit ac.",
    category:"House",
    price: "120",
    capacity: "8",
    address:"73 rue Royale",
    post_code:"59800",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2017/09/ROYAL_ROULOTTE_PARIS_9_IX_RENOVATION_DECORATION_APPARTEMENT_01.jpg",
    profile_id: prof.id
  )

Flat.create!(
    name:"consectetur adipiscing elit.",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel dignissim libero.",
    category:"Flat",
    price: "90",
    capacity: "4",
    address:"23 rue Nationale",
    post_code:"59000",
    city:"Lille",
    remote_photo_url:"http://royalroulotte.com/wp-content/uploads/2015/11/ROYAL_ROULOTTE_MONTREUIL_CUISINE_06.jpg",
    profile_id: prof.id
  )
