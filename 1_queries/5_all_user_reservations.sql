SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
GROUP BY properties.id, reservations.id
HAVING reservations.guest_id=1 AND reservations.end_date < now()::date
ORDER BY reservations.start_date
LIMIT 10;


-- * SOLUTION #2
-- SELECT properties.id, reservations.guest_id,title, cost_per_night, avg_rating_table.average_rating
-- FROM reservations
-- JOIN properties ON properties.id=reservations.property_id
-- JOIN (SELECT properties.id as id, avg(rating) as average_rating
-- FROM property_reviews
-- JOIN properties ON properties.id=property_id
-- GROUP BY properties.id) as avg_rating_table ON avg_rating_table.id = reservations.property_id
-- WHERE reservations.guest_id=1 and end_date <= now()::date
-- ORDER BY reservations.start_date
-- limit 10;

-- * SOLUTION #3
-- SELECT properties.*, reservations.*, avg(rating) as average_rating
-- FROM reservations
-- JOIN properties ON reservations.property_id = properties.id
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- WHERE reservations.guest_id = 1
-- AND reservations.end_date < now()::date
-- GROUP BY properties.id, reservations.id
-- ORDER BY reservations.start_date
-- LIMIT 10;



-- * select test code
-- SELECT properties.id, reservations.guest_id,title, avg(rating) as average_rating
-- SELECT properties.*, reservations.*, avg(rating) as average_rating

-- * property's average rating test
-- SELECT avg(rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id=property_id
-- GROUP BY properties.id
-- HAVING properties.id=931;


-- * test join tables
-- SELECT reservations.id, reservations.property_id, reservations.guest_id, properties.id, property_reviews.id, rating, property_reviews.property_id
-- FROM reservations
-- JOIN properties ON reservations.property_id = properties.id
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- WHERE reservations.guest_id=1;