USE db_klinik;

UPDATE pasien
SET no_telepon='089876543210'
WHERE id_pasien=1;
SELECT * FROM pasien;

UPDATE dokter
SET spesialisasi='Penyakit Dalam'
WHERE id_dokter=1;
SELECT * FROM dokter;

SELECT * FROM rekam_medis;
DELETE FROM rekam_medis
WHERE id_rekam=2;


DROP TABLE rekam_medis;
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE CASCADE
);
DESCRIBE rekam_medis;

INSERT INTO rekam_medis VALUES
(1,1,1,'2026-04-01','Demam'),
(2,2,1,'2026-04-02','Batuk');
SELECT * FROM rekam_medis;

DELETE FROM dokter
WHERE id_dokter=1;
SELECT * FROM dokter;

SELECT * FROM rekam_medis;