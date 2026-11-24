CREATE TABLE IF NOT EXISTS lokasi (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nama TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS checkin (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    lokasi_id INTEGER NOT NULL,
    user_token TEXT NOT NULL,
    waktu_masuk TEXT NOT NULL,
    waktu_keluar TEXT,
    tipe_checkout TEXT,
    FOREIGN KEY (lokasi_id) REFERENCES lokasi(id)
);

INSERT OR IGNORE INTO lokasi (nama) VALUES ('Stulo Lantai 5'), ('Stulo Lantai 1');