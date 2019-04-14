User.create(username: 'kazumi', email: 'kazumi@gmail.com', password: 'password', admin: true) 
User.create(username: 'john', email: 'john@gmail.com', password: 'password')
User.create(username: 'keima', email: 'keima@gmail.com', password: 'password')
User.create(username: 'jiji', email: 'jiji@gmail.com', password: 'password')


plant_list = [
  ['Tulip', false, false, true, 1],
  ['Peony', false, false, false, 2],
  ['Tomato', false, true, true, 1],
  ['Thyme', true, true, false, 1],
  ['Calendula', true, false, false, 2],
  ['Green Bean', false, true, true, 3],
  ['Green Onion', false, true, true, 3],
  ['Lily', false, false, false, 3],
  ['Tomato', false, true, true, 3],
  ['Gardenia', false, false, true, 4],
  ['Daffodils', false, false, true, 4],
]

plant_list.each do |plant|
  Plant.create(name: plant[0], in_the_garden: plant[1], edible: plant[2], annual: plant[3], user_id: plant[4])
end

action_list = ['Seed', 'Plant', 'Bloom', 'Harvest']

action_list.each do |action|
  Action.create(action_name: action)
end
