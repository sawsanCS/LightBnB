DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;
CREATE  TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL, 
  password VARCHAR(255) NOT NULL
);
CREATE TABLE reservations (
  id SERIAL PRIMARY KEY, 
  start_date Date NOT NULL,
  end_date DATE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
CREATE TABLE properties (
   id SERIAL PRIMARY KEY, 
   owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
   title VARCHAR(255) NOT NULL,
   description TEXT,
   thumbnail_photo_url VARCHAR(255),
   cover_photo_url VARCHAR(255),
   cost_per_night INTEGER NOT NULL,
   parking_spaces INTEGER NOT NULL,
   number_of_bathrooms INTEGER NOT NULL,
   number_of_bedrooms INTEGER NOT NULL,
   country VARCHAR(255) NOT NULL, 
   street VARCHAR(255) NOT NULL,
   city VARCHAR(255) NOT NULL, 
   province VARCHAR(255) NOT NULL,
   post_code VARCHAR(255) NOT NULL, 
   active BOOLEAN NOT NULL
);
CREATE TABLE property_reviews (
   id SERIAL PRIMARY KEY, 
   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
   rating SMALLINT,
   message_review TEXT
);