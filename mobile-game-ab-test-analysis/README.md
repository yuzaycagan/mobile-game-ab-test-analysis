#  Mobile Game A/B Test — Monetization Analysis Case Study

##  Business Problem

A mobile game team tested two monetization strategies:

- Variant A
- Variant B

The goal is simple:

 **Which version generates more sustainable revenue and should be shipped to all users?**

This project simulates a real-world product analytics task using SQL.

---

##  Dataset

Each row represents one user.

Columns:

- user_id
- revenue → total spend of the user
- testgroup → A or B

Users are assumed to be randomly assigned.

---

##  Analysis Strategy

Revenue performance is not just "who earns more".

We analyze step-by-step:

1. Conversion → how many users pay?
2. ARPU → how much revenue per user?
3. Total revenue → overall business impact
4. Payer behavior → average & median spending
5. Whale dependency → is revenue concentrated on few users?

---

#  Step 1 — Conversion Rate

**Question:**  
Which group converts more users into paying customers?

Metric:

paying_users / total_users

Result:

| Group | Conversion |
|---------|------------|
| A | 0.95% |
| B | 0.89% |

 A converts slightly better

Insight:
Variant A encourages more users to make at least one purchase.

---

#  Step 2 — ARPU & Total Revenue

**Question:**  
Which group actually makes more money?

Metrics:

- ARPU = total_revenue / total_users
- Total Revenue

Result:

| Group | ARPU | Total Revenue |
|---------|----------|--------------|
| A | 25.41 | 5.13M |
| B | 26.75 | 5.42M |

 B earns more money overall

Insight:
Even with lower conversion, B extracts more value per user.

---

#  Step 3 — Payer Behavior

**Question:**  
Do payers spend differently?

Metrics:

- average revenue per payer
- median revenue
- max revenue

Result:

| Group | Avg/Payer | Median | Max |
|---------|------------|---------|---------|
| A | 2664 | 311 | 37k |
| B | 3003 | 3016 | 4k |

Insights:

- A has extreme whales (very high max)
- B has consistently higher median spending

> B monetizes more users at mid/high levels  
> A depends on rare huge spenders

---

#  Step 4 — Whale Dependency

**Question:**  
Is revenue dependent on a few whales ?

Metric:

Top 5% payer revenue share

Result:

| Group | Top 5% Revenue Share |
|---------|----------------------|
| A | 70% |
| B | 6% |

! Big difference.

Insights:

- A → revenue heavily concentrated on few whales
- B → revenue distributed more evenly

Business risk:
If a few whales churn → A collapses.

---

Variant B provides healthier and more sustainable monetization.

---

## Author

Çağan Yüzay
