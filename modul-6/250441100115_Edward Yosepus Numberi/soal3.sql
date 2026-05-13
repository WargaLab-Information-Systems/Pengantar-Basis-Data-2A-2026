SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa m
JOIN nilai n ON m.nim = n.nim
WHERE EXISTS (
    SELECT *
    FROM nilai n 
    WHERE n.nim = m.nim
);