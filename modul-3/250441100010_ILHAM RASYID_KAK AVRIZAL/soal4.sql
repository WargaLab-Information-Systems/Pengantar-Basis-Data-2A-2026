SELECT * FROM inventaris_gudang_pusat
WHERE lokasi_rak LIKE 'B%'
AND not (harga_satuan BETWEEN 1000000 AND 5000000)
AND kategori != 'Monitor';