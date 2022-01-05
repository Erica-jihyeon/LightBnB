SELECT properties.*, avg(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id=property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night
limit 10;


-- properties.id, title, cost_per_night
-- properties.*


