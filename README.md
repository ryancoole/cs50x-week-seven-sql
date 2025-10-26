# CS50x - Week 7: SQL

This repo contains my solutions for **Week 7** of Harvard's [CS50x](https://pll.harvard.edu/course/cs50-introduction-computer-science) course. The focus this week was on learning **SQL** and working with **SQLite** databases.

---

## ✅ Projects

### `songs`
Explores a database of Billboard 100 songs to practice basic SQL querying. Tasks involve filtering, counting, and ordering data using `SELECT`, `WHERE`, and `ORDER BY`. Covers simple conditions, sorting by popularity, and counting unique values. Emphasizes clean query structure and minimal output formatting.  

Each query answers a question about the songs database, such as:
- Retrieving songs by specific artists  
- Counting total songs from a year  
- Listing top-ranked titles  

---

### `movies`
A collection of SQL queries analyzing IMDb movie data. The exercises focus on combining tables, filtering data, and calculating aggregates. Demonstrates proper use of `JOIN`, `GROUP BY`, `ORDER BY`, and subqueries for complex relationships between movies, directors, and actors.  

Each `.sql` file answers a specific question, including:
- Finding all movies from a certain year or after a given date  
- Determining the number of top-rated movies  
- Listing directors or actors meeting certain criteria  
- Discovering co-stars, shared appearances, and top-rated performances  

Highlights the importance of clear schema understanding and precise query design.  

---

### `fiftyville`
A detective-style mystery project where the goal is to solve a fictional crime using SQL. By querying a town’s database (`fiftyville.db`), the task is to determine:
- **Who** stole the CS50 duck  
- **Where** they fled  
- **Who** helped them escape  

The investigation is fully documented in `log.sql`, which contains a chronological record of every query and reasoning step. The final answers are submitted in `answers.txt`.  

This project showcases:
- Real-world-style analytical reasoning through data  
- Complex joins and subqueries  
- Schema exploration (`.schema`, `.tables`)  
- Systematic elimination of suspects and logical deduction using pure SQL  
