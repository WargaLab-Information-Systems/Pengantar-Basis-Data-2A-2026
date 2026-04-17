SELECT nama_barang, kategori, kode_sku, harga_satuan
FROM inventaris_gudang_pusat
WHERE kategori IN ('Laptop', 'Smartphone', 'Monitor')
  AND kode_sku LIKE '%ELEC%X'
  AND harga_satuan > 5000000;