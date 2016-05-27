User.destroy_all
sadmin = User.create(
  firstname: 'Cristobal',
  lastname: 'Domínguez',
  username: 'cd_sadmin',
  email: 'sadmin@abtesting.com',
  password: 'password',
  role: 0
)

admin = User.create(
  firstname: 'Diego',
  lastname: 'Guajardo',
  username: 'dg_admin',
  email: 'admin@abtesting.com',
  password: 'password',
  role: 1
)
users = []

(1..10).each do |i|
  users << User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    email: "client_#{i}@mail.com",
    password: 'password',
    role: 2
  )
end