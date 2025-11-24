
# SQL Project 2 | Group 1
Members: Ben Kim, Jackson Avey, Christian Hertzig, Success Onichabor, Drew Vajda
- Second rendition of the SQL project to include: more complex queries as well as visualizations

## Scenario
The task at hand is to model and build a relational database for the general operations of a network of bike stores. The central entity in the model is the Store entity, representing each individual location where bikes and related products are sold. Each store manages its stock of products, including details such as quantity, category, and brand. The system also tracks orders placed by customers, consisting of multiple order items tied to specific products. Additionally, employees are associated with each store to manage sales and inventory. The product detail entity provides descriptive information about each item, while the categories and brands entities classify and group products effectively. Our goal is to accurately model these relationships, populate the database with sample data, and perform queries that yield useful insights into sales performance, inventory management, and customer purchasing trends across all stores.

## Data Model
Explanation:
The Bike Store data model captures how products, customers, employees, and orders interact across multiple store locations. It is built around a set of well-defined relationships that mirror the real-world structure of a retail business. At the heart of the design is the Product table, which connects to several entities. Each product belongs to exactly one Brand and one Category, forming two one-to-many relationships from Product to Brand and Category. This means a single brand or category can be associated with many products, but each product can only have one brand and one category. The Product_Detail table is linked to Product through a one-to-one relationship because each product has a unique set of detailed attributes such as model year and list price that apply to that specific item only.
Sales transactions are modeled through the Orders and Order_Item tables. The Orders table connects to Customer in a one-to-many relationship since a single customer can place many orders, but each order belongs to only one customer. Each Order can also have multiple items, leading to a one-to-many relationship between Orders and Order_Item. On the other side, each Order_Item references a single Product, but a product can appear in many order items over time, forming another one-to-many relationship from Order_Item to Product. The Order_Item table serves as an associative entity, enabling a many-to-many conceptual link between Orders and Product while storing key transactional attributes like quantity, discount, and price at the item level.
Inventory and store management are supported by the Stores, Stock, and Employee tables. The Stock table connects Stores and Product in a many-to-many relationship implemented through Stock as a bridge entity. Each store carries many products, and each product can be stocked in multiple stores, with quantity levels stored in Stock. The Employee table links to Stores in a one-to-many relationship, showing that multiple employees work in one store. It also has a self-referencing relationship where an employee can manage other employees, modeling a managerial hierarchy within the same table. Finally, Orders connect back to Stores indirectly through Employees and Customers, ensuring that every transaction can be traced to both a customer and a physical location.
Overall, this model efficiently supports business operations such as tracking sales, managing inventory, and organizing staff responsibilities. The chosen relationship types ensure data consistency — for example, every product detail ties to exactly one product, while inventory and sales can scale across multiple stores and customers. This balance of one-to-one, one-to-many, and many-to-many structures provides both normalization and flexibility for future business growth.

<img width="892" height="733" alt="SQLProjectDataModelImage" src="https://github.com/user-attachments/assets/8337c60e-26e6-4089-8a54-1c85048dfe9e" />


## Data Dictionary
<img width="608" height="776" alt="dd1" src="https://github.com/user-attachments/assets/44a78b02-dc85-4cd9-a5a5-2ff7b1b14835" />
<img width="612" height="731" alt="dd2" src="https://github.com/user-attachments/assets/f79aa584-c186-4c56-b600-b04abf83066a" />
<img width="628" height="830" alt="dd3" src="https://github.com/user-attachments/assets/ed7b2800-34b3-4f24-83ff-f216a6520714" />
<img width="628" height="891" alt="dd4" src="https://github.com/user-attachments/assets/689e6454-5f9a-4133-959c-f9c21c5f653c" />
<img width="630" height="866" alt="dd5" src="https://github.com/user-attachments/assets/8307cacf-95c8-4d74-83d6-a7896a2e1e5f" />
<img width="634" height="207" alt="dd6" src="https://github.com/user-attachments/assets/2c48d451-4b3c-4898-8694-6ff3697848d3" />



## Five Complex Queries

## Database Info Table

## Tableau Visualizations + Justifications + Questions

The Name of the Database is: cs_bck81809
