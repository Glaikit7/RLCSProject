--Search for duplicate match data
--All match ids should appear 2x
SELECT 
  match_id, COUNT(match_id)

FROM `big-dynamo-354814.RLCSData.matches`

GROUP BY 
  match_id
  
HAVING COUNT(match_id) != 2

--Removes rows where match stats are null
DELETE 
FROM `big-dynamo-354814.RLCSData.matches`
WHERE
  boost_bpm IS NULL

  -- Looks at the number of shots on goal across the RLCS and calculates the win percentage of each group
-- 0 to 10

SELECT  

  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 0 AND core_shots <= 10) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 0 AND core_shots <= 10)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 0 AND core_shots <= 10;

-- 10 to 20

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 10 AND core_shots <= 20) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 10 AND core_shots <= 20)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 10 AND core_shots <= 20;

-- 20 to 30

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 20 AND core_shots <= 30) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 20 AND core_shots <= 30)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 20 AND core_shots <= 30;

-- 30 to 40

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 30 AND core_shots <= 40) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 30 AND core_shots <= 40)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 30 AND core_shots <= 40;
  
-- 40 to 50

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 40 AND core_shots <= 50) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 40 AND core_shots <= 50)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 40 AND core_shots <= 50;
  
-- 50 to 60

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 50 AND core_shots <= 60) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 50 AND core_shots <= 60)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 50 AND core_shots <= 60;
  
-- 60 to 70

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 60 AND core_shots <= 70) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 60 AND core_shots <= 70)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 60 AND core_shots <= 70;

-- 70 to 80

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 70 AND core_shots <= 80) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND core_shots >= 70 AND core_shots <= 80)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  core_shots >= 70 AND core_shots <= 80

-- Looks at the total movement distance across the RLCS and calculates the win percentage of each group
-- 3.5M - 4M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 3500000 AND movement_total_distance <= 4000000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 3500000 AND movement_total_distance <= 4000000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 3500000 AND movement_total_distance <= 4000000;

-- 4M- 4.5M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 4000000 AND movement_total_distance <= 4500000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 4000000 AND movement_total_distance <= 4500000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 4000000 AND movement_total_distance <= 4500000;

-- 4.5M - 5M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 4500000 AND movement_total_distance <= 5000000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 4500000 AND movement_total_distance <= 5000000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 4500000 AND movement_total_distance <= 5000000;

-- 5M - 5.5M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 5000000 AND movement_total_distance <= 5500000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 5000000 AND movement_total_distance <= 5500000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 5000000 AND movement_total_distance <= 5500000;

-- 5,5M - 6M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 5500000 AND movement_total_distance <= 6000000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 5500000 AND movement_total_distance <= 6000000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 5500000 AND movement_total_distance <= 6000000;

-- 6M - 6.5M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 6000000 AND movement_total_distance <= 6500000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 6000000 AND movement_total_distance <= 6500000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 6000000 AND movement_total_distance <= 6500000;

-- 6.5M - 7M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 6500000 AND movement_total_distance <= 7000000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 6500000 AND movement_total_distance <= 7000000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 6500000 AND movement_total_distance <= 7000000;

--7M - 7.5M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 7000000 AND movement_total_distance <= 7500000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 7000000 AND movement_total_distance <= 7500000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 7000000 AND movement_total_distance <= 7500000;

--7.5M - 8M

SELECT  
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 7500000 AND movement_total_distance <= 8000000) AS won,
  
  COUNT(winner) AS total,
  
  (SELECT
    COUNT(winner)
  FROM
    `big-dynamo-354814.RLCSData.matches` 
  WHERE
    winner = TRUE AND movement_total_distance >= 7500000 AND movement_total_distance <= 8000000)/COUNT(winner) AS pct_win

FROM `big-dynamo-354814.RLCSData.matches` 

WHERE
  movement_total_distance >= 7500000 AND movement_total_distance <= 8000000;