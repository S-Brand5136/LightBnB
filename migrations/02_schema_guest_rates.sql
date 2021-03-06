DROP TABLE IF EXISTS rates CASCADE;
DROP TABLE IF EXISTS guest_reviews;

CREATE TABLE rates (
  id SERIAL PRIMARY KEY NOT NULL,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  start_date DATE NOT NULL DEFAULT now(),
  end_date DATE NOT NULL 
);

CREATE TABLE guest_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL DEFAULT 0,
  message TEXT
);