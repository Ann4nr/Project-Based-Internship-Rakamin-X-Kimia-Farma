# Project-Based-Internship-Rakamin-X-Kimia-Farma
Final Project Kimia Farma Big Data Analyst: Performance Analytics Kimia Farma Business Year 2020-2023 using BigQuery SQL &amp; Looker Studio.

🔍 Project Summary

This repository contains the final project from the Rakamin Academy X Kimia Farma Project-Based Internship Program.
The purpose of this project is to evaluate Kimia Farma's business performance from 2020 to 2023 through transaction data using Google BigQuery and Looker Studio.

🔍 Dataset Description

The following are datasets imported from CSV  to Google BigQuery as tables used in this project:
- kf_final_transaction: Transaction data 
- kf_inventory: Product inventory data
- kf_kantor_cabang: Branch office information
- kf_product: Product master data

🔍 Data Processing and Analysis

Data processing and analysis were performed by creating an analysis table (kf_analisa) from the aggregation of the four datasets above, which then became the main source for business analysis and dashboard development.
Mandatory columns included in the analysis table:
- transaction_id: transaction ID code,
- date: date of transaction,
- branch_id: Kimia Farma branch ID code,
- branch_name: Kimia Farma branch name,
- city: Kimia Farma branch city,
- province: Kimia Farma branch province,
- branch_rating: consumer rating of Kimia Farma branch,
- customer_name: name of the customer who made the transaction,
- product_id: medicine product code,
- product_name: medicine name,
- actual_price: medicine price,
- discount_percentage: discount percentage given on the medicine,
- gross_profit_percentage : The percentage of profit that should be received from medicines with the following conditions:
    - Price <= Rp 50,000 -> 10% profit
    - Price > Rp 50,000 - 100,000 -> 15% profit
    - Price > Rp 100,000 - 300,000 -> 20% profit
    - Price > IDR 300,000 - 500,000 -> 25% profit
    - Price > IDR 500,000 -> 30% profit,
- nett_sales: price after discount,
- nett_profit: profit earned by Kimia Farma,
- rating_transaksi: consumer rating of the transaction performed.

👩‍🎓 Author

Annisa Nur Rohmah

🔍 Notes

This project was completed as part of the Rakamin Academy x Kimia Farma Project-Based Internship Program and is intended for educational and portfolio purposes.
