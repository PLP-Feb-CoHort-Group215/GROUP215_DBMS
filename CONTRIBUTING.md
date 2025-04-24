# 🤝 Contributing Guide

Welcome, team! 🎉 This project thrives on open collaboration, clear structure, and shared understanding. Whether you're writing SQL scripts, updating the ERD, or improving documentation, your contributions matter. Here's how to keep everything in sync and efficient.

---

## 🧭 Our Collaboration Philosophy

This is a **team-driven project**, and our goal is that everyone:
- Understands the entire database structure 🧠
- Actively contributes to the design and logic 💡
- Follows our agreed structure and naming conventions 🧱
- Uses GitHub Projects + Issues to stay aligned 📋

---

## 📌 How to Contribute

### 1. Pick an Issue From the Project Board

We’re using the Project Board (https://github.com/orgs/PLP-Feb-CoHort-Group215/projects/1) to organize our work.

- Each **Issue is linked to a task or feature**, like creating a table, setting up relationships, or writing documentation.
- Tasks are divided by **priority and dependencies** – tackle issues in order.
- Before starting on a task, **assign yourself** to the issue and move it to "In Progress".

### 2. Understand the Context (Relativity)

- Always check **linked issues** to understand dependencies (e.g., `product_item` depends on `product`, `color`, and `size_option`).
- If you're working on something that affects other tables, **communicate** in the issue comments.
- Read the ERD and data-flow files in `/docs` before editing or creating new tables.

### 3. Create a Feature Branch

Name your branch clearly, referencing the issue:

```bash
git checkout -b feature/product-table-setup
