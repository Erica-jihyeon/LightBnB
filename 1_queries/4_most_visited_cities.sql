SELECT city, count(reservations.*) as total_reservations
FROM properties
JOIN reservations ON properties.id=property_id
GROUP BY city
ORDER by total_reservations DESC;