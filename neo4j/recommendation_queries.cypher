// Hybrid recommendation query
MATCH (u:User {name:'Alice'})-[:FRIEND_OF]->(f)-[r:RATED]->(m)
WHERE NOT (u)-[:RATED]->(m)
RETURN m.title,
       SUM(r.rating)               AS friendScore,
       m.avgRating                 AS globalRating,
       m.popularity                AS popularity,
       (SUM(r.rating) * 0.7 + m.avgRating * 0.3) AS finalScore
ORDER BY finalScore DESC;
