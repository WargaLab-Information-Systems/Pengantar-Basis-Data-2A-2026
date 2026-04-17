CREATE TABLE inventaris_gudang_pusat (
    id_barang INT PRIMARY KEY,
    nama_barang VARCHAR(100),
    kode_sku VARCHAR(50),
    kategori VARCHAR(50),
    harga_satuan DECIMAL,
    stok INT,
    lokasi_rak VARCHAR(20),
    status_qc VARCHAR(20)
);
INSERT INTO inventaris_gudang_pusat VALUES
(101, 'Gaming Laptop G5', 'ELEC-442-X', 'Laptop', 15900000, 12, 'A-01', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-410-Y', 'Aksesoris', 250000, 200, NULL, 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-891-X', 'Monitor', 7200000, 0, 'B-05', 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-201-Z', 'Aksesoris', 2300000, 45, 'B-02', 'Lulus'),
(105, 'Office Chair Pro', 'FURN-991-P', 'Furniture', 3900000, 8, 'C-01', 'NULL'),
(106, 'USB-C Hub 5in1', 'ACC-301-X', 'Aksesoris', 850000, 0, NULL, 'Gagal'),
(107, 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', 14000000, 4, 'A-02', 'Lulus'),
(108, 'Standing Desk', 'FURN-882-Q', 'Furniture', 9800000, 13, 'C-02', 'Lulus'),
(109, 'Headset Gaming RGB', 'ACC-494-S', 'Aksesoris', 1100000, 25, NULL, 'Lulus'),
(110, 'Thunderbolt Cable', 'ACC-519-Z', 'Aksesoris', 650000, 50, 'B-03', 'Lulus');
