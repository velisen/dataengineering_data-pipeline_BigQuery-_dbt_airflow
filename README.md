Project Overview

An End-to-End Data Engineering Pipeline with Airflow, BigQuery, dbt, and Soda

This project demonstrates a complete modern data pipeline built using industry-standard tools to handle ingestion, transformation, validation, and visualization of retail sales data.
💡 Key Highlights:

    Orchestrated with Airflow (via Astro): All tasks are scheduled and managed through Apache Airflow.

    Data Ingestion into BigQuery: CSV files containing online retail raw data are ingested into a Snowflake or BigQuery data warehouse.

    Data Quality Checks with Soda: At each critical step (raw, staging, and reporting), automated data quality checks ensure data integrity.

    Data Modeling with dbt: Transformations are handled through dbt models, following a layered architecture (staging, intermediate, marts).

    Visualization via Metabase: The final clean datasets are served into Metabase for dashboarding and business reporting.

🔧 Tech Stack

    Docker: Containerized development environment

    Astronomer (Astro): Airflow-as-a-Service for local and cloud orchestration

    Apache Airflow: Workflow orchestration

    Google BigQuery: Cloud data warehouse for storage and query execution

    dbt (Data Build Tool): SQL-based transformation framework

    Soda Core: Data quality monitoring and testing

    Metabase: Open-source business intelligence tool

🗂️ Architecture

    Ingest CSV data into the raw dataset in BigQuery.

    Run Soda checks to ensure raw data quality.

    Use dbt to create staging and reporting models.

    Apply Soda validations post-transformation.

    Load clean tables into Metabase for insights.

🧩 Data Model

The schema follows a star schema with a central fact table (fct_invoices) and related dimension tables (dim_product, dim_customer, dim_datetime).
