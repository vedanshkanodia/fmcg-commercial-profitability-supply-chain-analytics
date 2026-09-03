# FMCG Commercial Profitability & Supply Chain Analytics

## Project Overview

An end-to-end FMCG analytics project analyzing commercial profitability, promotional effectiveness, channel performance, geographic performance, SKU contribution, and supply-chain stockouts across three years of synthetic multi-country sales data.

The project combines SQL-based analysis with Tableau visualization to translate transactional sales data into actionable business insights.

---

## Business Objectives

- Evaluate overall revenue and profitability
- Identify high-performing product categories and SKUs
- Analyze channel and country-level performance
- Measure the impact of promotions on profitability
- Analyze stockout patterns and potential revenue exposure
- Identify trends that can support commercial and supply-chain decisions

---

## Dataset

The project uses a synthetic FMCG multi-country sales dataset containing approximately 1.1 million transaction records across 2021–2023.

Key fields include:

- Date and time attributes
- Country and city
- Sales channel
- SKU, category, subcategory and brand
- Units sold
- List price and discount
- Gross and net sales
- Stock availability
- Lead time
- Supplier
- Purchase cost
- Margin

> **Note:** The dataset is synthetic and is used for portfolio/analytical demonstration purposes.

---

## Tools & Technologies

- SQL
- DuckDB
- Tableau Public
- CSV / Excel
- Data Visualization
- Business Analytics

---

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Net Sales | ₹47.29 Cr |
| Gross Profit | ₹18.22 Cr |
| Gross Margin | 38.5% |
| Stockout Rate | ~3.0% |

---

## Key Business Insights

### 1. Promotions reduce profitability

Promotional transactions show substantially lower margins than non-promotional transactions.

This indicates that discounting can materially reduce profitability and should be evaluated based on incremental profit rather than revenue growth alone.

### 2. Snacks are the strongest profit contributor

Snacks generate the highest gross profit among the major product categories, making the category an important contributor to overall profitability.

### 3. Hypermarket is the dominant channel

Hypermarkets generate the largest share of revenue among the analyzed sales channels.

### 4. Italy and Spain are leading markets

Italy and Spain are the strongest markets by revenue, while the Netherlands represents the smallest market in the dataset.

### 5. SKU concentration matters

A relatively small group of SKUs contributes significantly to total revenue, making SKU-level performance useful for assortment and commercial prioritization.

---

## Dashboard

The Tableau Public dashboard provides an interactive view of:

- Monthly Revenue Trend
- Promotion Margin Impact
- Channel Performance
- Category Profitability
- SKU Performance
- Country Performance
- Net Sales
- Gross Profit
- Profit Margin
- Stockout Rate

**Tableau Public:**  
[PASTE YOUR TABLEAU PUBLIC LINK HERE]

---

## Analytical Approach

The project follows an end-to-end analytics workflow:

```text
Raw FMCG Data
      ↓
Data Validation
      ↓
SQL / DuckDB Analysis
      ↓
Business Metrics
      ↓
Tableau Visualization
      ↓
Business Insights
      ↓
Recommendations
