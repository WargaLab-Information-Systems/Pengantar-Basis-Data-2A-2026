SELECT AVG(nilai_angka) AS rata_rata_nilai
FROM (
    SELECT nilai_angka 
    FROM nilai 
    WHERE kode_mk = 'MK01' OR kode_mk = 'MK02'
) AS temp_nilai;
