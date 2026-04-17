SELECT nama_barang, stok,
	CASE
	when stok = 0 AND kategori = "aksesoris" THEN "Urgent- Restok segera"
    WHEN stok >0 and stok<10 AND kategori in("laptop","smartphone") THEN "High Priority"
    WHEN stok => 10 and  stok<=50 THEN "Medium"
    ELSE "Aman"
  	END AS prioritas_restock
FROM `inventaris_gudang_pusat` order by stok ASC
