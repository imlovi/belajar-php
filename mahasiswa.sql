CREATE DATABASE fakultas

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR (4) NOT NULL,
    nama VARCHAR (50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR (8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR (10) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR (50) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

--coding di shell -- 

Setting environment for using XAMPP for Windows.
Dicky PC@DICKY-PC c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.25-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.029 sec)

MariaDB [(none)]> CREATE DATABASE fakultas;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| fakultas           |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.002 sec)

MariaDB [(none)]> use fakultas;
Database changed
MariaDB [fakultas]> show tables;
Empty set (0.003 sec)

MariaDB [fakultas]> CREATE TABLE jurusan (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     kode CHAR (4) NOT NULL,
    ->     nama VARCHAR (50) NOT NULL
    -> );
Query OK, 0 rows affected (0.055 sec)

MariaDB [fakultas]> show tables;
+--------------------+
| Tables_in_fakultas |
+--------------------+
| jurusan            |
+--------------------+
1 row in set (0.001 sec)

MariaDB [fakultas]> desc jurusan;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode  | char(4)     | NO   |     | NULL    |                |
| nama  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.025 sec)

MariaDB [fakultas]> CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id jurusan INTEGER NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INTEGER NOT NULL' at line 3
MariaDB [fakultas]>     nim CHAR (8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR (10) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR (50) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan (id),
    -> )
    ->
    -> CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id jurusan INTEGER NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nim CHAR (8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ...' at line 1
MariaDB [fakultas]>     nim CHAR (8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR (10) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR (50) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan (id),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nim CHAR (8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ...' at line 1
MariaDB [fakultas]> CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id jurusan INTEGER NOT NULL,
    ->     nim CHAR (8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR (10) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR (50) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INTEGER NOT NULL,
    nim CHAR (8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
 ...' at line 3
MariaDB [fakultas]> CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id_jurusan INTEGER NOT NULL,
    ->     nim CHAR (8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR (10) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR (50) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
    -> );
Query OK, 0 rows affected (0.065 sec)

MariaDB [fakultas]> show tables;
+--------------------+
| Tables_in_fakultas |
+--------------------+
| jurusan            |
| mahasiswa          |
+--------------------+
2 rows in set (0.002 sec)

MariaDB [fakultas]> select * from jurusan;
Empty set (0.064 sec)

MariaDB [fakultas]> desc jurusan;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode  | char(4)     | NO   |     | NULL    |                |
| nama  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.018 sec)

MariaDB [fakultas]> insert into jurusan('kode', 'nama') values ('ABC', 'Administrasi Pulik');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''kode', 'nama') values ('ABC', 'Administrasi Pulik')' at line 1
MariaDB [fakultas]> insert into jurusan (kode, nama) values ("ABC", "Administrasi Publik");
Query OK, 1 row affected (0.007 sec)

MariaDB [fakultas]> select * from jurusan;
+----+------+---------------------+
| id | kode | nama                |
+----+------+---------------------+
|  1 | ABC  | Administrasi Publik |
+----+------+---------------------+
1 row in set (0.001 sec)

MariaDB [fakultas]> insert into jurusan (kode, nama) values ("Lala", "Teknik Informatika");
Query OK, 1 row affected (0.007 sec)

MariaDB [fakultas]> select * from jurusan;
+----+------+---------------------+
| id | kode | nama                |
+----+------+---------------------+
|  1 | ABC  | Administrasi Publik |
|  2 | Lala | Teknik Informatika  |
+----+------+---------------------+
2 rows in set (0.001 sec)

MariaDB [fakultas]> desc mahasiswa;
+---------------+-------------------------------+------+-----+---------+----------------+
| Field         | Type                          | Null | Key | Default | Extra          |
+---------------+-------------------------------+------+-----+---------+----------------+
| id            | int(11)                       | NO   | PRI | NULL    | auto_increment |
| id_jurusan    | int(11)                       | NO   | MUL | NULL    |                |
| nim           | char(8)                       | NO   |     | NULL    |                |
| nama          | varchar(50)                   | NO   |     | NULL    |                |
| jenis_kelamin | enum('laki-laki','perempuan') | NO   |     | NULL    |                |
| tempat_lahir  | varchar(10)                   | NO   |     | NULL    |                |
| tanggal_lahir | date                          | NO   |     | NULL    |                |
| alamat        | varchar(50)                   | NO   |     | NULL    |                |
+---------------+-------------------------------+------+-----+---------+----------------+
8 rows in set (0.021 sec)

MariaDB [fakultas]> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (1, "20391789", "Viery", "perempuan", "Bali", "2002-11-23", "Jl.Pelangi 12");
Query OK, 1 row affected (0.008 sec)

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+-------+---------------+--------------+---------------+---------------+
| id | id_jurusan | nim      | nama  | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat        |
+----+------------+----------+-------+---------------+--------------+---------------+---------------+
|  1 |          1 | 20391789 | Viery | perempuan     | Bali         | 2002-11-23    | Jl.Pelangi 12 |
+----+------------+----------+-------+---------------+--------------+---------------+---------------+
1 row in set (0.001 sec)

MariaDB [fakultas]> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (2, "20391790", "Dickyy", "laki-laki", "Banyuwangi", "2002-12-23", "Jl.Pelangi 21");
Query OK, 1 row affected (0.007 sec)

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
| id | id_jurusan | nim      | nama   | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat        |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
|  1 |          1 | 20391789 | Viery  | perempuan     | Bali         | 2002-11-23    | Jl.Pelangi 12 |
|  2 |          2 | 20391790 | Dickyy | laki-laki     | Banyuwangi   | 2002-12-23    | Jl.Pelangi 21 |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
2 rows in set (0.001 sec)

MariaDB [fakultas]> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (2, "20391790", "Dickyy", "LAKI-LAKI", "Banyuwangi", "2002-12-23", "Jl.Pelangi 21");
Query OK, 1 row affected (0.005 sec)

MariaDB [fakultas]> delete from mahasiswa where id = 3;
Query OK, 1 row affected (0.011 sec)

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
| id | id_jurusan | nim      | nama   | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat        |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
|  1 |          1 | 20391789 | Viery  | perempuan     | Bali         | 2002-11-23    | Jl.Pelangi 12 |
|  2 |          2 | 20391790 | Dickyy | laki-laki     | Banyuwangi   | 2002-12-23    | Jl.Pelangi 21 |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
2 rows in set (0.001 sec)

MariaDB [fakultas]> update mahasiswa set alamat = "Jl. Prince Felix 02" where id = 1;
Query OK, 1 row affected (0.010 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
| id | id_jurusan | nim      | nama   | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat              |
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
|  1 |          1 | 20391789 | Viery  | perempuan     | Bali         | 2002-11-23    | Jl. Prince Felix 02 |
|  2 |          2 | 20391790 | Dickyy | laki-laki     | Banyuwangi   | 2002-12-23    | Jl.Pelangi 21       |
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
2 rows in set (0.001 sec)

MariaDB [fakultas]> update mahasiswa set tempat_lahir = "Kalimatan";
Query OK, 2 rows affected (0.008 sec)
Rows matched: 2  Changed: 2  Warnings: 0

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
| id | id_jurusan | nim      | nama   | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat              |
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
|  1 |          1 | 20391789 | Viery  | perempuan     | Kalimatan    | 2002-11-23    | Jl. Prince Felix 02 |
|  2 |          2 | 20391790 | Dickyy | laki-laki     | Kalimatan    | 2002-12-23    | Jl.Pelangi 21       |
+----+------------+----------+--------+---------------+--------------+---------------+---------------------+
2 rows in set (0.001 sec)

MariaDB [fakultas]> delete from mahasiswa where id = 1;
Query OK, 1 row affected (0.007 sec)

MariaDB [fakultas]> select * from mahasiswa;
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
| id | id_jurusan | nim      | nama   | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat        |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
|  2 |          2 | 20391790 | Dickyy | laki-laki     | Kalimatan    | 2002-12-23    | Jl.Pelangi 21 |
+----+------------+----------+--------+---------------+--------------+---------------+---------------+
1 row in set (0.001 sec)

MariaDB [fakultas]> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (3, "20391790", "Wahyu", "LAKI-LAKI", "Sulawesi", "2002-12-13", "Jl.Pelangi 31");")
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`fakultas`.`mahasiswa`, CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`))
    ">
    "> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (3, "20391790", "Wahyu", "LAKI-LAKI", "Sulawesi", "2002-12-13", "Jl.Pelangi 31");
    "> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (3, "20391790", "Wahyu", "LAKI-LAKI", "Sulawesi", "2002-12-13", "Jl.Pelangi 31");
    "> select * from mahasiswa;
    "> update mahasiswa set tempat_lahir = "Sulawesi";
    "> insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (3, "20391790", "Wahyu", "LAKI-LAKI", "Sulawesi", "2002-12-13", "Jl.Pelangi 31");
    "> select * from mahasiswa;
    ">