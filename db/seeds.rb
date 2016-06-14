AbTest.destroy_all
Site.destroy_all
User.destroy_all

sadmin = User.create(
  firstname: 'Cristobal',
  lastname: 'Domínguez',
  username: 'cd_sadmin',
  email: 'cdominguez@abt.com',
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

10.times do |i|
  users << User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    email: "client_#{i}@mail.com",
    password: 'password',
    role: 2
  )
end


domains = ['jesusscript.cl', 'css3.cl', 'html5.cl', 'jquery.cl']
site = []

4.times do |i|
  site << Site.create(
    domain: domains[i],
    user: sadmin
  )
end

20.times do |i|
  AbTest.create(
    title: "A/B Test ##{i}",
    site: site.sample
  )
end