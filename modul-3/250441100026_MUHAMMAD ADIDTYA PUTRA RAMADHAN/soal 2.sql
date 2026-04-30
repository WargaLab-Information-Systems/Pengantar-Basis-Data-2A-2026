SELECT DISTINCT kategori
FROM inventaris_gudang_pusat
WHERE kode_sku LIKE '%acc%y'
AND harga_satuan > 5000000;