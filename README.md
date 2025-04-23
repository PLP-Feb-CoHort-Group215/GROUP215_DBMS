# GROUP215_DBMS E-Commerce Database Design Project

Welcome to our collaborative project where we design and implement a relational database schema for an e-commerce platform! This project involves planning, designing, and delivering a fully structured SQL-based database with clear documentation and team collaboration.

---

## 1️⃣ Entity-Relationship Diagram (ERD) ✍️

### Tasks:
- Define **entities (tables)** and their **attributes**.
- Clarify **relationships** between tables.
- Identify **primary keys**, **foreign keys**, and **constraints**.
- Create the ERD using tools like:
  - [Lucidchart](https://www.lucidchart.com/)
  - [draw.io](https://draw.io/)
  - [dbdiagram.io](https://dbdiagram.io/)
  - [MySQL Workbench](https://www.mysql.com/products/workbench/)

> Final ERD will be uploaded in `/docs/ERD.pdf`.

---

## 2️⃣ Data Flow Planning 🔄

We will map how data flows through our system from one entity to another and define:
- Input/output across tables
- How data connects (e.g., foreign key relationships)
- Considerations for data normalization and scalability

> We'll document our data flow diagrams and logic in `/docs/data-flow.md`.

---

## 3️⃣ Group Collaboration 🤝

### Team Guidelines:
- **Meet regularly** to discuss progress and roadblocks
- **Everyone contributes** to analysis, design, and implementation
- Use GitHub:
  - For **version control**
  - To track progress with **Issues** and **Projects**
  - For **code review** and documentation

### Communication:
- Ask questions early and often
- Share insights and updates in team meetings or GitHub Discussions

---

## 4️⃣ Submission Checklist 🚀

- [ ] Final **ERD** diagram
- [ ] Complete **ecommerce.sql** file
- [ ] Documentation: `/docs` folder with planning files
- [ ] Public GitHub repository ready for review

---

## 🧑‍🤝‍🧑 Collaboration Tools

| Tool             | Purpose                        |
|------------------|--------------------------------|
| GitHub           | Version control & coordination |
| Google Meet/Zoom | Weekly meetings & discussions  |
| Lucidchart       | ERD and data flow diagrams     |
| Slack/Discord    | Team communication (optional)  |

---

## 🗃️ Tables to Be Created

| Table Name            | Description                                                  |
|------------------------|--------------------------------------------------------------|
| `product_image`        | Stores product image URLs or file references                 |
| `color`                | Manages available color options                              |
| `product_category`     | Classifies products into categories (e.g., clothing, electronics) |
| `product`              | Stores general product details (name, brand, base price)     |
| `product_item`         | Represents purchasable items with specific variations        |
| `brand`                | Stores brand-related data                                    |
| `product_variation`    | Links a product to its variations (e.g., size, color)        |
| `size_category`        | Groups sizes into categories (e.g., clothing sizes, shoe sizes) |
| `size_option`          | Lists specific sizes (e.g., S, M, L, 42)                      |
| `product_attribute`    | Stores custom attributes (e.g., material, weight)            |
| `attribute_category`   | Groups attributes into categories (e.g., physical, technical) |
| `attribute_type`       | Defines types of attributes (e.g., text, number, boolean)    |

---

## License

This project is for educational purposes only.
