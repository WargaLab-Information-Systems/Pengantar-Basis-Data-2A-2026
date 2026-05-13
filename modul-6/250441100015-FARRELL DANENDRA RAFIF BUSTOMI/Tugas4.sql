SELECT AVG(nilai_angka) AS rata_rata_nilai_MK01_MK02
FROM
(
	SELECT nilai_angka
    FROM nilai
    WHERE kode_mk IN ("MK01", "MK02")
) AS rata_rata_nilai;