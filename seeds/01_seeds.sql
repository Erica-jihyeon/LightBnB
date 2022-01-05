INSERT INTO users(name, email, password)
VALUES ('Susan', 'susan@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Malloy', 'malloy@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Harison', 'harison@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');


INSERT INTO properties(owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES ('1', 'Sunshine', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 100, 6, 1, 1, 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680'),
('2', 'Sunset', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 250, 3, 3, 2, 'Canada', '1650 Hejto Center', 'Genwezuj', 'Ontario', '38051'),
('3', 'Lake shine', 'description', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 300, 10, 3, 5, 'Canada', '340 Dokto Park', 'Upfufa', 'Nova Scotia', '29045');

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-10-29', '2018-11-03', 1, 1),
('2019-10-01', '2019-10-30', 2, 2),
('2020-06-15', '2020-06-16', 3, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES(1, 1, 1, 3, 'message'),
(2, 2, 2, 5, 'message'),
(3, 3, 3, 4, 'message');