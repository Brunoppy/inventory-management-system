# Inventory Management System

## Description
This project is a simple SQL-based Inventory Management System that tracks product details, categories, and inventory changes. It is designed to help businesses manage stock levels efficiently and maintain a log of inventory updates.

## Features
- **Categories Table**: Organizes products into categories for better classification.
- **Products Table**: Tracks product details, including name, category, quantity, and unit price.
- **Inventory Log**: Maintains a history of inventory changes (additions, removals, adjustments).
- **Queries**:
  - Calculate total inventory value.
  - Identify low-stock items for restocking.

## How to Use
1. **Set Up the Database**:
   - Use MySQL or a compatible DBMS.
   - Run the `inventory_management.sql` script to create the database and populate it with sample data.

2. **Explore Inventory Data**:
   - Use the provided queries to calculate inventory value and identify low-stock items.

## SQL Highlights
- Use of **foreign keys** to link products and categories.
- Use of **ENUM** to classify types of inventory changes.
- Queries for financial calculations and inventory management.

## License
This project is licensed under the MIT License.

## Author
[Your Name]
