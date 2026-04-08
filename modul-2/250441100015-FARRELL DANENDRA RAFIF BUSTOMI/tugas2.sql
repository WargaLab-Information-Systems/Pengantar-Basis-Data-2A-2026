--2 data dokter—
INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi) VALUES (1, "Farrell", "Gigi"),(2,"Rylzn", "Telinga")

--2 data pasien—
INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES (1, "Mulyadi", "2007-03-27", 085136825989),(2, "Dedi", "2006-03-27", 085136825989)

--2 data rekam medis—
INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (1, 2, 2, now(), "telinga kotor"),(2,2,1, "2026-01-12", "Jangan lupa gosok gigi")

-- tidak ada id_dokter—
INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (3, 2, 4, now(), "telinga kotor")
