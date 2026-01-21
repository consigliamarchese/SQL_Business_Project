# SQL_Business_Project

📌 Panoramica

Progetto SQL sviluppato durante il Master in Data Analytics (SQL Build Week).
Il database gestisce vendite, magazzini e livelli di stock per una catena di supermercati, aggiornando dinamicamente le scorte in base alle vendite e monitorando le soglie di restock.

🧠 Scenario di business

Ogni magazzino può rifornire uno o più negozi

Ogni prodotto appartiene a una categoria

Ogni categoria ha una soglia di restock

Quando le scorte scendono sotto la soglia, viene generato un ordine di rifornimento

🗂 Database & Design

Progettato secondo principi di normalizzazione

Entità principali: Magazzini, Negozi, Prodotti, Categorie, Stock Levels, Transazioni di vendita

SALES: chiave primaria composita (SalesID, LineID), StoreID come FK verso STORES

Diagramma E/R incluso per illustrare relazioni e flusso dei dati

📊 Logica dell’inventario

Aggiornamento stock a livello di magazzino in base alle vendite

Monitoraggio soglie di restock per categoria

Design scalabile per più negozi per magazzino, anche se il dataset di esempio ha un solo store per magazzino

🔍 Funzionalità principali

Aggiornamento dinamico dell’inventario dopo le vendite

Monitoraggio stock e alert per restock

Supporto per scenari multi-store e multi-warehouse

🛠 Tecnologie

SQL (DDL & DML)

Modellazione relazionale e ER

Analisi dati e business logic

🚀 Come usare

Creare il database

Eseguire gli script di creazione delle tabelle

Inserire dati di esempio

Eseguire query di aggiornamento e monitoraggio stock
----------------------------------------------------------------
ENG # 🏬 Inventory & Order Management System – VendiCose SpA

## 📌 Project Overview
This project was developed during my Master in Data Analytics as part of a SQL Build Week.

The goal was to design and implement a relational database that allows **VendiCose SpA**, a supermarket chain, to manage the flow of orders, inventory and restocking across warehouses and stores.

The system tracks product stock at warehouse level and dynamically updates inventory based on sales transactions occurring in stores.

---

## 🧠 Business Scenario
- Each **warehouse** can supply one or more **stores**
- Each **product** belongs to a **category**
- Each **category** has an associated **restock threshold**
- When the stock of a product in a warehouse falls below the threshold, a restock action is required
- All inventory updates originate from **sales transactions at store level**

---

## 🗂 Database Design
The database was designed following **normalization principles** to minimize redundancy and ensure data consistency.

Main entities:
- Warehouses
- Stores
- Products
- Categories
- Stock Levels
- Sales Transactions

The ER diagram included in the repository shows:
- primary and foreign keys
- relationships between entities
- the flow of information from sales to warehouse inventory

---

## 📊 Inventory Logic
Stock quantities are maintained at **warehouse level**.

When a product is sold in a store:
1. the store is associated with a warehouse
2. the corresponding warehouse stock is updated
3. stock levels are checked against category restock thresholds

---

## 📌 Design Assumptions & Scalability
Due to the limited size of the sample dataset, each warehouse is associated with a single store.

However, the **schema and SQL queries were intentionally designed to support scalable, real-world scenarios**, where:
- one warehouse supplies multiple stores
- multiple sales from different stores impact the same warehouse inventory
- no changes to business logic are required as data volume grows

This ensures the system can scale seamlessly without redesigning queries or database structure.

---


