organizer = User.create(first_name: 'Zack', last_name: 'Mance', email: 'zack@dbc.com', age: 29)

guest_1 = User.create(first_name: 'Jean', last_name: 'Grey', email: 'jg@dbc.com', age: 32)
guest_2 = User.create(first_name: 'Scott', last_name: 'Summers', email: 'zack@dbc.com', age: 29)

graduation = Event.create(name: 'Graduation', min_age: 18, date_of: DateTime.parse('05/06/2015'), organizer_id: organizer.id)

vip_1 = Vip.create(user_id: guest_1.id, event_id: graduation.id) 
vip_2 = Vip.create(user_id: guest_2.id, event_id: graduation.id) 

gg = Bottle.create(name: 'Blue Goose', price: 500.00)
gj = Bottle.create(name: 'Gopher Juice', price: 1200.00)
pp = Bottle.create(name: 'Pocket Punch', price: 2200.00)

oj = Mixer.create(name: 'Orange Juice', price: 20.00)
cb = Mixer.create(name: 'Cranberry Juice', price: 30.00)
sd = Mixer.create(name: 'Soda', price: 15.00)

BottleService.create(vip_id: vip_1.id, bottle_id: gg.id, mixer_id: sd.id)
BottleService.create(vip_id: vip_1.id, bottle_id: gj.id, mixer_id: oj.id)
BottleService.create(vip_id: vip_1.id, bottle_id: pp.id, mixer_id: cb.id)
BottleService.create(vip_id: vip_2.id, bottle_id: pp.id, mixer_id: sd.id)


                          
