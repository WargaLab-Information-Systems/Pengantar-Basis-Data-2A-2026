SELECT kode_mk, nama_mk
FROM   mata_kuliah
WHERE  kode_mk IN (
           SELECT kode_mk
           FROM   krs
           WHERE  nim = (
               SELECT nim
               FROM   mahasiswa
               WHERE  nama = 'Budi Santoso'
           )
       );