\# Mobile Game A/B Test Revenue Analysis



This project analyzes an A/B test dataset from a mobile game to evaluate which monetization variant performs better.



\##  Goal

Compare two test groups (A and B) in terms of:

\- Conversion rate

\- ARPU (Average Revenue Per User)

\- Total revenue



\##  Dataset

Columns:

\- user\_id

\- revenue

\- testgroup (A/B)



The exact product change is not specified.

We assume users were randomly assigned to two monetization variants.



\##  Metrics



\### Conversion Rate

paying\_users / total\_users



\### ARPU

total\_revenue / total\_users



\### Total Revenue

sum of all purchases



\##  Results



| Group | Conversion | ARPU  | Total Revenue |

|-------|------------|-------|---------------|

| A     | 0.95%      | 25.41 | 5.13M         |

| B     | 0.89%      | 26.75 | 5.42M         |



\##  Insights

\- A converts more users into payers

\- B generates higher revenue per user

\- B likely has stronger whale monetization

\- B produces higher total revenue → better business performance



\##  Tools

\- SQL (BigQuery)

\- Google Sheets / CSV

\- GitHub



\##  Author

Çağan Yüzay

