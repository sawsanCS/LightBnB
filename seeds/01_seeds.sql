INSERT INTO users (name, email, password) 
VALUES ('Saoussen Slii', 'sawsan_sli3i@live.fr', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (name, email, password) 
VALUES ('Faycel Jaouadi', 'faycel.maths@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (name, email, password) 
VALUES ('Fethi Haddaoui', 'fethi_haddaoui@live.fr', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');



INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, 
cover_photo_url, cost_per_night, parking_spaces, 
number_of_bathrooms, number_of_bedrooms, 
country, street, city, province, 
post_code, active)
VALUES (1, 'happiness apartment', 'description',
'url for thumbnail', 'url for cover', 100, 
1, 1, 3, 'Canada', 'Laurent', 'Nepean',
'Ontario', 'L1F8O7', TRUE);
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, 
cover_photo_url, cost_per_night, parking_spaces, 
number_of_bathrooms, number_of_bedrooms, 
country, street, city, province, 
post_code, active)
VALUES (2, 'HOPE apartment', 'description',
'url for thumbnail', 'url for cover', 100, 
1, 1, 3, 'Canada', 'woodRoff', 'Vanier',
'Ontario', 'M1F8H7', TRUE);
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, 
cover_photo_url, cost_per_night, parking_spaces, 
number_of_bathrooms, number_of_bedrooms, 
country, street, city, province, 
post_code, active)
VALUES (3, 'strength apartment', 'description',
'url for thumbnail', 'url for cover', 100, 
1, 1, 3, 'Canada', 'Landry', 'DownTown',
'Ontario', 'F1F8F7', FALSE);


INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-01-01', '2021-01-14', 1, 1);
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-01-02', '2021-01-15', 2, 2);
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-01-03', '2021-01-16', 3, 3);


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message_review)
VALUES (1, 1, 1, 4, 'some random message');
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message_review)
VALUES (2, 2, 2, 5, 'some random message');
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message_review)
VALUES (3, 3, 3, 2, 'some random message');
