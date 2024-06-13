--Monthly Landlord Revenue Report Generation
-- https://www.codewars.com/kata/6613c03d77e972004677ecd4/sql

--S1
--
select
  landlord.id as landlord_id,
  name,
  coalesce(sum(rent), 0) as total_rent,
  coalesce(sum(cost), 0) as total_cost,
  coalesce(sum(rent), 0) - coalesce(sum(cost), 0) as amount_payable
from landlord
left join property on landlord.id = landlord_id
left join lateral (select sum(cost)::int as cost from maintenance where property.id = property_id and maintenance_date between '2024-04-01' and '2024-04-30') c on true
group by landlord.id, name
order by total_rent desc, landlord_id desc
--
--S2
--
--
--SELECT 
--  l.id AS landlord_id,
--  l."name",
--  COALESCE(SUM(DISTINCT p.rent), 0) AS total_rent,
--  COALESCE(SUM(m.cost), 0) AS total_cost,
--  COALESCE(SUM(DISTINCT p.rent), 0) - COALESCE(SUM(m.cost), 0) AS amount_payable
--FROM landlord l
--  LEFT JOIN property p ON l.id = p.landlord_id
--  LEFT JOIN maintenance m ON p.id = m.property_id AND m.maintenance_date >= '2024-04-01' AND m.maintenance_date < '2024-05-01'
--GROUP BY 
--  l.id, l."name"
--ORDER BY 
--  total_rent DESC, landlord_id DESC;
--
--  S3
--
--
--  with mm as (
--  select property_id,
--    sum(cost) filter (where maintenance_date <@ daterange '[2024-04-01,2024-05-01)') :: int as cost
--  from maintenance
--  group by property_id
--)
--select landlord.id as landlord_id, name,
--  coalesce(sum(rent), 0) as total_rent,
--  coalesce(sum(cost), 0) as total_cost,
--  coalesce(sum(rent), 0) - coalesce(sum(cost), 0) as amount_payable
--from property left join mm on property.id = property_id right join landlord on landlord_id = landlord.id
--group by landlord.id, name
--order by total_rent desc, landlord_id desc
--
--
--S4
--
--WITH 
--cost_landlord AS (
--  SELECT p.landlord_id, SUM(m.cost) AS total_cost
--  FROM maintenance m
--  JOIN property p ON m.property_id = p.id
--  WHERE DATE_TRUNC('month', m.maintenance_date) = '2024-04-01'
--  GROUP BY p.landlord_id
--),
--rent_landlord AS (
--  SELECT landlord_id, SUM(rent) AS total_rent
--  FROM property
--  GROUP BY landlord_id
--)
--
--SELECT 
--  l.id AS landlord_id,
--  l.name,
--  COALESCE(rl.total_rent, 0) AS total_rent,
--  COALESCE(cl.total_cost, 0) AS total_cost,
--  COALESCE(rl.total_rent, 0) - COALESCE(cl.total_cost, 0) AS amount_payable
--FROM landlord l
--LEFT JOIN rent_landlord rl ON l.id = rl.landlord_id
--LEFT JOIN cost_landlord cl ON l.id = cl.landlord_id
--ORDER BY total_rent DESC, landlord_id DESC;
--
--