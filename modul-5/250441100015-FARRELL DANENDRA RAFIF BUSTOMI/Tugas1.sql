SELECT angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING Total_Mahasiswa > 1
ORDER BY Total_Mahasiswa DESC;