# 📊 SQL Data Warehouse & Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀

This project demonstrates a **complete data warehousing and analytics solution** — from building a modern data architecture to generating actionable business insights. Designed as a portfolio project, it showcases industry best practices in data engineering, ETL pipelines, and data modeling.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture** design pattern with three distinct layers:

| Layer | Icon | Description |
|-------|------|-------------|
| **Bronze** | 🟤 | Raw data ingestion from CSV files into SQL Server (no transformation) |
| **Silver** | ⚪ | Cleaned, standardized, and transformed data for integration and quality assurance |
| **Gold** | 🟡 | Business-ready data modeled in a Star Schema for analysis and reporting |


---

## 📖 Project Overview

This comprehensive project includes the following components:

### 🎯 Core Components

- **📐 Data Architecture**: Modern data warehouse design using Medallion Architecture (Bronze → Silver → Gold)
- **🔄 ETL Pipelines**: Extract, transform, and load data using SQL procedures and scripts
- **🧱 Data Modeling**: Dimension and fact tables structured for reporting (Star Schema)
- **📊 Analytics & Reporting**: SQL-based reports for key business insights
- **🧪 Data Quality**: Quality checks and validation scripts

---

## 📁 Project Structure

```
SQL-Data-Warehouse-Project/
├── datasets/                          # Source 
├── scripts/                           # SQL 
│   ├── init_database.sql             # Database initialization (creates DataWarehouse DB & schemas)
│   ├── Bronze/                       # Bronze 
│   ├── Silver/                       # Silver 
│   └── Gold/                         # Gold  
├── Tests/                                        
├── LICENSE                           
└── README.md                         
```

---

## 🗄️ Database Schema Overview

### Bronze Layer Tables
Raw data staging tables that mirror source CSV structure:
- `bronze.crm_cust_info` - Customer info (CRM)
- `bronze.crm_prd_info` - Product info (CRM)
- `bronze.crm_sales_details` - Sales transactions (CRM)
- `bronze.erp_cust_az12` - Customer demographics (ERP)
- `bronze.erp_loc_a101` - Location/country data (ERP)
- `bronze.erp_px_cat_g1v2` - Product categories (ERP)

### Silver Layer Tables
Cleaned and standardized tables with added metadata:
- `silver.crm_cust_info` - Validated customer data with timestamps
- `silver.crm_prd_info` - Validated product data with data lineage
- `silver.crm_sales_details` - Cleaned sales data with proper date types
- `silver.erp_cust_az12` - Standardized customer demographics
- `silver.erp_loc_a101` - Standardized location data
- `silver.erp_px_cat_g1v2` - Standardized product categories

### Gold Layer (Star Schema)
Business-ready views for analytics:

**Dimension Tables:**
- `gold.dim_customers` - Customer dimension with enriched attributes
- `gold.dim_products` - Product dimension with categories and metadata

**Fact Tables:**
- `gold.fact_sales` - Sales transactions connected to dimensions

---

## 🎯 Key Features

✅ **Complete ETL Pipeline** - End-to-end data transformation from raw to business-ready

✅ **Data Quality Validation** - Quality checks ensure integrity and consistency

✅ **Star Schema Design** - Optimized for fast analytical queries

✅ **Dimension & Fact Tables** - Proper data modeling for OLAP analysis

✅ **Multiple Data Sources** - Consolidates ERP and CRM data

✅ **Scalable Architecture** - Easily extensible for additional data sources

✅ **Well-Documented Code** - Clear comments and documentation throughout

---

## 🛠️ Tools & Technologies

| Category | Tools |
|----------|-------|
| **Database** | SQL Server (Express) |
| **IDE** | SQL Server Management Studio (SSMS) |
| **Data Source** | CSV Files |

---

---

## 📊 Business Insights & Analytics

The Gold layer enables analysis across three key areas:

### 👥 Customer Behavior
- Customer demographics (age, gender, marital status)
- Geographic distribution
- Customer lifecycle analysis

### 📦 Product Performance
- Sales by product category
- Product line performance
- Product popularity trends

### 💵 Sales Trends
- Sales revenue and growth
- Order and shipping metrics
- Quantity and pricing analysis


---

## 🔄 Data Flow

```
┌─────────────────┐
│   Source Data   │ (CSV Files)
│  (ERP & CRM)    │
└────────┬────────┘
         │
         ▼
┌─────────────────────────────────────┐
│    Bronze Layer (Raw Data)          │
│  • No transformations               │
│  • Staging tables for CSV imports   │
│  • Full data lineage                │
└────────┬────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────┐
│   Silver Layer (Cleaned Data)       │
│  • Data cleansing                   │
│  • Standardization                  │
│  • Type conversion                  │
│  • Quality checks                   │
└────────┬────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────┐
│  Gold Layer (Business Ready)        │
│  • Star Schema                      │
│  • Dimension & Fact tables          │
│  • Optimized for analytics          │
│  • Ready for BI tools               │
└─────────────────────────────────────┘
```

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Resources

- **SQL Server Express**: [Download](https://www.microsoft.com/en-us/sql-server/sql-server-editions-express)
- **SQL Server Management Studio**: [Download](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- **Data Warehouse Concepts**: [Microsoft Docs](https://docs.microsoft.com/en-us/sql/relational-databases/data-warehouse-features)

---

## 🌟 Key Takeaways

This project demonstrates:
- ✨ Building enterprise-grade data warehouses
- ✨ Implementing Medallion Architecture
- ✨ Creating Star Schema for analytics
- ✨ ETL pipeline development and automation
- ✨ Data quality and validation
- ✨ Best practices in data modeling
- ✨ SQL optimization techniques

---

**Happy analyzing! 📊**
