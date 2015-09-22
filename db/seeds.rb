# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Event.delete_all

u1 = User.create!(name: 'Hubert Farnsworth')
u2 = User.create!(name: 'Philip Fry')
u3 = User.create!(name: 'Amy Wong')
u4 = User.create!(name: 'Turanga Leela')
u5 = User.create!(name: 'Bender Rodriguez')
u6 = User.create!(name: 'Hermes Conrad')
u7 = User.create!(name: 'Zapp Brannigan')
u8 = User.create!(name: 'John Zoidberg')
u9 = User.create!(name: 'Kif Kroker')
u10 = User.create!(name: 'Antonio Calculon')
u11 = User.create!(name: 'Rob Holloway')

e1 = Event.create!( name:'Premier League: Arsenal vs Chelsea', 
                    event_type:'football', 
                    prediction1: 'Time of first goal', 
                    prediction1_type: 'xxmins',
                    prediction_1_result: nil, 
                    prediction2: 'Final Score', 
                    prediction2_type: 'x-x',
                    prediction_2_result: nil, 
                    prediction3: 'Time of first booking', 
                    prediction3_type: 'xxmins',
                    prediction_3_result: nil, 
                    start_datetime: DateTime.strptime("09/26/2015 17:30", "%m/%d/%Y %H:%M"), 
                    end_datetime: DateTime.strptime("09/26/2015 19:30", "%m/%d/%Y %H:%M")
                  )
e2 = Event.create!( name:'First ODI: England vs Australia', 
                    event_type:'cricket',
                    prediction1: 'England runs',
                    prediction1_type: 'xxx',  
                    prediction_1_result: nil, 
                    prediction2: 'England first batsman runs', 
                    prediction2_type: 'xxx',
                    prediction_2_result: nil, 
                    prediction3: 'Australia ball before first wicket', 
                    prediction3_type: 'xxx',
                    prediction_3_result: nil, 
                    start_datetime: DateTime.strptime("09/17/2015 11:00", "%m/%d/%Y %H:%M"), 
                    end_datetime: DateTime.strptime("09/26/2015 18:00", "%m/%d/%Y %H:%M")
                  )
e3 = Event.create!( name:'F1: British GP', 
                    event_type:'f1', 
                    prediction1: 'Time of fastest Lap', 
                    prediction1_type: 'xmins-xx.xxxsecs',
                    prediction_1_result: 146087, 
                    prediction2: 'Total number of pit stops',
                    prediction2_type: 'xxx', 
                    prediction_2_result: 64, 
                    prediction3: 'Winning margin', 
                    prediction3_type: 'xmins-xx.xxxsecs',
                    prediction_3_result: 15338, 
                    start_datetime: DateTime.strptime("07/15/2015 13:00", "%m/%d/%Y %H:%M"), 
                    end_datetime: DateTime.strptime("07/15/2015 15:00", "%m/%d/%Y %H:%M")
                  )

# USER 1
e1.user_event_predictions.create!(  user_id: u1.id, 
                                    event_id: e1.id,
                                    prediction_1: 16,
                                    prediction_2: 20,
                                    prediction_3: 31,
                                  )
e2.user_event_predictions.create!(  user_id: u1.id, 
                                    event_id: e2.id,
                                    prediction_1: 265,
                                    prediction_2: 31,
                                    prediction_3: 23,
                                  )
e3.user_event_predictions.create!(  user_id: u1.id, 
                                    event_id: e3.id,
                                    prediction_1: 146225,
                                    prediction_2: 55,
                                    prediction_3: 3865,
                                  )

# USER 2
e1.user_event_predictions.create!(  user_id: u2.id, 
                                    event_id: e1.id,
                                    prediction_1: 85,
                                    prediction_2: 10,
                                    prediction_3: 62,
                                  )
e2.user_event_predictions.create!(  user_id: u2.id, 
                                    event_id: e2.id,
                                    prediction_1: 270,
                                    prediction_2: 59,
                                    prediction_3: 51,
                                  )
e3.user_event_predictions.create!(  user_id: u2.id, 
                                    event_id: e3.id,
                                    prediction_1: 146190,
                                    prediction_2: 72,
                                    prediction_3: 5147,
                                  )

# USER 3
e1.user_event_predictions.create!(  user_id: u3.id, 
                                    event_id: e1.id,
                                    prediction_1: 0,
                                    prediction_2: 00,
                                    prediction_3: 18,
                                  )
e2.user_event_predictions.create!(  user_id: u3.id, 
                                    event_id: e2.id,
                                    prediction_1: 187,
                                    prediction_2: 0,
                                    prediction_3: 0,
                                  )
e3.user_event_predictions.create!(  user_id: u3.id, 
                                    event_id: e3.id,
                                    prediction_1: 145891,
                                    prediction_2: 80,
                                    prediction_3: 1931,
                                  )

# USER 4
e1.user_event_predictions.create!(  user_id: u4.id, 
                                    event_id: e1.id,
                                    prediction_1: 43,
                                    prediction_2: 31,
                                    prediction_3: 39,
                                  )
e2.user_event_predictions.create!(  user_id: u4.id, 
                                    event_id: e2.id,
                                    prediction_1: 228,
                                    prediction_2: 41,
                                    prediction_3: 24,
                                  )
e3.user_event_predictions.create!(  user_id: u4.id, 
                                    event_id: e3.id,
                                    prediction_1: 146114,
                                    prediction_2: 49,
                                    prediction_3: 7142,
                                  )

# USER 5
e1.user_event_predictions.create!(  user_id: u5.id, 
                                    event_id: e1.id,
                                    prediction_1: 58,
                                    prediction_2: 01,
                                    prediction_3: 8,
                                  )
e2.user_event_predictions.create!(  user_id: u5.id, 
                                    event_id: e2.id,
                                    prediction_1: 251,
                                    prediction_2: 6,
                                    prediction_3: 9,
                                  )

# USER 6
e2.user_event_predictions.create!(  user_id: u6.id, 
                                    event_id: e2.id,
                                    prediction_1: 296,
                                    prediction_2: 71,
                                    prediction_3: 50,
                                  )

# USER 7
e1.user_event_predictions.create!(  user_id: u7.id, 
                                    event_id: e1.id,
                                    prediction_1: 16,
                                    prediction_2: 21,
                                    prediction_3: 22,
                                  )
e3.user_event_predictions.create!(  user_id: u7.id, 
                                    event_id: e3.id,
                                    prediction_1: 147088,
                                    prediction_2: 62,
                                    prediction_3: 4771,
                                  )

# USER 8
e1.user_event_predictions.create!(  user_id: u8.id, 
                                    event_id: e1.id,
                                    prediction_1: 13,
                                    prediction_2: 22,
                                    prediction_3: 40,
                                  )

# USER 9
e2.user_event_predictions.create!(  user_id: u9.id, 
                                    event_id: e2.id,
                                    prediction_1: 309,
                                    prediction_2: 61,
                                    prediction_3: 43,
                                  )

# USER 10
e3.user_event_predictions.create!(  user_id: u10.id, 
                                    event_id: e3.id,
                                    prediction_1: 146513,
                                    prediction_2: 71,
                                    prediction_3: 6219,
                                  )












