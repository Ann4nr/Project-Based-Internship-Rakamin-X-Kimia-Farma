-- Membuat tabel analisa dari agregasi 4 tabel (kf_final_transaction, kf_inventory, kf_kantor_cabang, kf_product) dalam dataset kimia_farma --
CREATE OR REPLACE TABLE `kimia_farma.kf_analisa` AS     

SELECT
t.transaction_id,
t.date,
k.branch_id,
k.branch_name,
k.kota,
k.provinsi,
k.rating AS rating_cabang,
t.customer_name,
p.product_id,
p.product_name,
t.price AS actual_price,
t.discount_percentage,

-- Kolom Persentase Gross Laba (persentase laba yang seharusnya diterima dari obat dengan ketentuan berikut) --
CASE
WHEN t.price <= 50000 THEN 0.10
WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
ELSE 0.30
END AS persentase_gross_laba,

-- Kolom Nett Sales --
t.price * (1 - t.discount_percentage) AS nett_sales,

-- Kolom Nett Profit --
(t.price * (1 - t.discount_percentage)) *
CASE
WHEN t.price <= 50000 THEN 0.10
WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
ELSE 0.30
END AS nett_profit,

t.rating AS rating_transaksi

-- Menggabungkan tabel dengan Join --
FROM `kimia_farma.kf_final_transaction` t     -- t mewakili tabel kf_final_transiction --
JOIN `kimia_farma.kf_kantor_cabang` k         -- k mewakili tabel kf_kantor_cabang --
ON t.branch_id = k.branch_id
JOIN `kimia_farma.kf_product` p               -- p mewakili tabel kf_product --
ON t.product_id = p.product_id;


-- Melihat tabel analisa yang telah dibuat --
SELECT *
FROM `kimia_farma.kf_analisa`
limit 15;
