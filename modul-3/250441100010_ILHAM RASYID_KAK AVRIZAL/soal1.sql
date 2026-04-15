create database sr ;
use sr;

create table inventaris_gudang_pusat (
id_barang int primary key,
nama_barang varchar (100),
kode_sku varchar(50),
kategori varchar(50),
harga_satuan decimal,
stok int,
lokasi_rak varchar (20),
status_qc varchar (20)
);

insert into inventaris_gudang_pusat values
(101,'gaming laptop G5','ELEC-442-X','laptop',15500000,12,'A-01','lulus'),
(102,'wireless mouse','ACC-101-Y','aksesoris',250000,150,null,'lulus'),
(103,'ultra white monitor','ELEC-881-X','monitor',7200000,0,'B-05','pending'),
(104,'mecanical keyboard','ACC-202-Z','aksesoris',1200000,45,'B-01','lulus'),
(105,'officee chair pro','FURN-991-P','furniture',3500000,8,'C-01',null),
(106,'usb-c hub 10-in-1','ACC-303-X','aksesoris',850000,0,null,'gagal'),
(107,'smartphone Z flip','ELEC-112-Y','smartphone',14000000,4,'A-03','lulus'),
(108,'standing desk','FURN-881-Q','furniture',5000000,15,'C-02','lulus'),
(109,'headset gaming rgb','ACC-404-X','aksesoris',1100000,25,null,'lulus'),
(110,'tunderbolt cable','ACC-505-Z','aksesoris',450000,100,'B-03','lulus');

select nama_barang, kategori, kode_sku
from inventaris_gudang_pusat
where lokasi_rak is null
and stok > 0
and status_qc = 'lulus';
