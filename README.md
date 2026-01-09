# 🎬 Movie Recommendation System (Graph + SQL Analytics)

## 📌 Overview
This project implements an **explainable movie recommendation system** by combining:

- **Graph-based collaborative filtering** using **Neo4j**
- **SQL-based analytical signals** using **Apache Spark SQL**

The system recommends movies based on **social relationships**, **user ratings**, and **global popularity metrics**, while preserving clear, human-readable explanations.

---

## 🧠 Architecture

<img width="1024" height="1536" alt="image" src="https://github.com/user-attachments/assets/1019cc44-4822-46f4-b14a-848916b216eb" />

- **Neo4j** models users, movies, and relationships.
- **Spark SQL** computes global statistics such as average rating and popularity.
- These analytics are fed back into Neo4j to improve recommendation quality.

---

## 🗂️ Data Model (Neo4j)

### Nodes
- `User`
- `Movie`

### Relationships
- `(:User)-[:RATED {rating}]->(:Movie)`
- `(:User)-[:FRIEND_OF]->(:User)`

### Movie Properties (enriched via Spark)
- `avgRating`
- `popularity`

---

## 🔍 Recommendation Logic

Recommendations combine **local graph signals** and **global analytics**:

finalScore = 0.7 × friendScore + 0.3 × avgRating


This ensures:
- Personalized recommendations (friends’ preferences)
- Bias toward globally well-rated and popular movies

---

## 🧾 Explainability

Each recommendation includes a human-readable explanation, for example:

> “The Matrix is recommended because Bob rated it 4 and it has a global rating of 4.5.”

This makes the system transparent and interpretable.

---

## ⚙️ Technologies Used

- **Neo4j** – Graph database for relationships and traversal
- **Apache Spark SQL** – Distributed SQL analytics
- **CSV** – Simple data interchange format

---

## 📸 Screenshots

See the `/screenshots` folder for:
- Neo4j graph visualization
- Recommendation query output
- Spark SQL Web UI with execution plan

---

## 🚀 How to Run (High Level)

1. Load graph schema and data into Neo4j
2. Run Spark SQL analytics on `ratings.csv`
3. Update Neo4j `Movie` nodes with Spark results
4. Execute recommendation queries in Neo4j Browser

---

## 📈 Key Learnings

- Graph databases excel at modeling and explaining relationships
- SQL analytics are ideal for global aggregations
- Combining both leads to better, explainable recommendation systems


