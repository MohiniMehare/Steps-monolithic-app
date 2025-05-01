# Steps-Mohini

---

```markdown
# 🚀 Steps Login App – Spring MVC Project

Welcome to the **Steps Login App**, a simple and stylish Spring MVC-based login application with MySQL and Hibernate integration.

---

## 🛠️ Getting Started

### 1. 📂 Create MySQL Database

Make sure MySQL is running locally. Create a schema named:

```sql
CREATE DATABASE steps;
```

---

### 2. 🧾 Manually Create `user` Table (if needed)

If Hibernate does **not auto-generate** the table, run the following SQL to manually create the `user` table:

```sql
USE steps;

CREATE TABLE user (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(100),
  lname VARCHAR(100),
  email VARCHAR(100),
  number VARCHAR(20),
  address VARCHAR(100)
);
```

> 🔄 Hibernate may skip auto-generation if `hbm2ddl.auto` is not set or is misconfigured.

---

## 🔐 Login Instructions

To log into the app:

- **Email**: `steps@gmail.com`
- **Password**: `1234`
- Other fields are **optional**

---

## 💻 Tech Stack

- Spring MVC
- Hibernate (JPA)
- MySQL
- JSP + HTML + MDBootstrap

---

## ▶️ Run the App

1. Set DB credentials (`root` / password) in your **application.properties** or Spring context.
2. Deploy to Apache Tomcat.
3. Access the app:

```
http://localhost:8080/app/
```

---

## 📌 Features

- MDBootstrap UI-based login form
- Hardcoded login check (email + password)
- Optional fields: name, number, address
- Display users in a table
- Delete user functionality
- Hibernate ORM

---

Feel free to clone, customize, and enhance this project. Happy coding! 🎉
```

---
