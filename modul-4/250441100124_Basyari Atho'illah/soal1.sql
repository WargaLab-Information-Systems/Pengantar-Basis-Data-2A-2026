CREATE TABLE dosen (  
id_dosen INT PRIMARY KEY,  
nama_dosen VARCHAR(100),  
bidang_keahlian VARCHAR(50)  
);  
CREATE TABLE mata_kuliah (      
    id_mk VARCHAR(10) PRIMARY KEY,  
    nama_mk VARCHAR(100),  
    sks INT,  
    id_dosen INT,  
    FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)  
);  
CREATE TABLE krs (  
    id_krs INT PRIMARY KEY,  
    id_mahasiswa INT,  
    id_mk VARCHAR(10),  
    semester_ambil INT,  
    FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),  
    FOREIGN KEY (id_mk) REFERENCES mata_kuliah(id_mk)  
);  
CREATE TABLE mahasiswa (  
    id_mahasiswa INT PRIMARY KEY,  
    nama_mahasiswa VARCHAR(100),  
    program_studi VARCHAR(50),  
    angkatan INT  
); --- 
SELECT mk.nama_mk, mk.sks, d.nama_dosen 
FROM mata_kuliah AS mk 
JOIN dosen AS d ON mk.id_dosen = d.id_dosen 
WHERE d.bidang_keahlian IN ("Pemrograman", "Basis Data")