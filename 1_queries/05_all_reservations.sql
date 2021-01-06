SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.reservation_id = reservations.id
WHERE property_reviews.guest_id = 1
ORDER BY reservations.start_date
LIMIT 10;