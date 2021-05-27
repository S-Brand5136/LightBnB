INSERT INTO users (name, email, password)
VALUES ('Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sue Luna', 'jasonvincent@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code) 
VALUES (1, 'Port out', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 930.85, 2, 2, 4, 'Canada', '623 Sexsmith Road', 'Kelowna', 'BC', 'VR2 Z8X'),
(3, 'Hobbit Hole', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 1930.85, 5, 5, 7, 'Canada', '61 Country Hills NE', 'Calgary', 'AB', 'T2K 7H7'),
(2, 'The Diggs', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 800.99, 1, 4, 2, 'Canada', '285 Heritage Blvd', 'Penticton', 'BC', 'VT2 Z4X'),
(1, 'Dwights BeetFarm', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 200.00, 2, 2, 4, 'Canada', '145 Road 4', 'Oliver', 'BC', 'VE4 Z9E'),
(2, 'Rebel Base', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 500.50, 3, 0, 2, 'Canada', '10245 OakHampton Place SW', 'Calgary', 'AB', 'T5H 8H9');

INSERT INTO resrevations (start_date, end_date, porperty_id, guest_id) 
VALUES ('2018-02-31', '2018-03-05', 1,2), 
('2019-03-05', '2019-03-06', 5,1),
('2020-09-12', '2020-09-20', 3,4),
('2021-06-10', '2021-06-15', 1,3),
('2021-07-15', '2021-07-25', 2,1);


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
 VALUES (2,1,1,5, 'message')
 (1,5,2,4, 'message'),
 (4,3,3,2 'message'),
 (3,1,4,3, 'message'),
 (1,2,4,5, 'message');