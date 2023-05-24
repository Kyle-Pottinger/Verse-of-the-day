use master;

DROP DATABASE BibleApp;

CREATE DATABASE BibleApp;

USE BibleApp;

CREATE TABLE USERS (
    id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);


CREATE TABLE VERSES (
    id VARCHAR(5) PRIMARY KEY,
    Book VARCHAR(255) NOT NULL,
    chapter INT NOT NULL,
    startVerse INT NOT NULL,
    EndVerse INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE FAVORITES (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    verse_id VARCHAR(5) PRIMARY KEY,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES USERS(id),
    FOREIGN KEY (verse_id) REFERENCES VERSES(id)
);

-- Insert test data into USERS table
INSERT INTO USERS (username, password) 
VALUES 
    ('user1', 'password1'),
    ('user2', 'password2'),
    ('user3', 'password3'),
    ('user4', 'password4'),
    ('user5', 'password5');

-- Insert test data into VERSES table
INSERT INTO VERSES (id, Book, chapter, startVerse, EndVerse)
VALUES  INSERT INTO VERSES (Book, chapter, startVerse, EndVerse)
VALUES ('0101', 'GEN', 1, 1, 5),
	('0102', 'PSA', 23, 1, 6),
	('0103', 'MAT', 5, 3, 12),
	('0104', 'JHN', 3, 16, 18),
	('0105', 'PRO', 3, 5, 8),
	('0106', 'ROM', 8, 28, 30),
	('0107', '1CO', 13, 4, 8),
	('0108', 'EPH', 2, 8, 10),
	('0109', 'COL', 1, 15, 20),
	('0110', 'REV', 21, 1, 4),
	('0111', 'EXO', 20, 1, 17),
	('0112', 'ISA', 40, 28, 31),
	('0113', 'LUK', 15, 3, 7),
	('0114', 'ACT', 2, 42, 47),
	('0115', 'ROM', 12, 1, 2),
	('0116', 'EPH', 6, 10, 18),
	('0117', 'JAS', 1, 2, 4),
	('0118', '1PE', 5, 6, 11),
	('0119', 'MAT', 28, 18, 20),
	('0120', 'MRK', 10, 45, 45),
	('0121', 'GEN', 12, 1, 4),
	('0122', 'EXO', 14, 13, 14),
	('0123', 'PSA', 27, 1, 3),
	('0124', 'PRO', 16, 3, 4),
	('0125', 'ISA', 40, 29, 31),
	('0126', 'JER', 29, 11, 13),
	('0127', 'MAT', 6, 25, 27),
	('0128', 'LUK', 11, 9, 10),
	('0129', 'JHN', 14, 6, 7),
	('0130', 'ROM', 8, 38, 39),
	('0131', '1CO', 16, 14, 14),
    ('0201', 'EPH', 2, 8, 9),
	('0202', 'COL', 3, 23, 24),
	('0203', 'HEB', 4, 12, 13),
	('0204', 'JAM', 1, 17, 18),
	('0205', '1PE', 1, 3, 5),
	('0206', '2PE', 3, 9, 10),
	('0207', 'REV', 21, 3, 4),
	('0208', 'PSA', 118, 24, 29),
	('0209', 'MAT', 22, 37, 39),
	('0210', 'LUK', 15, 11, 32),
	('0211', 'JOH', 3, 16, 17),
	('0212', 'ROM', 12, 2, 3),
	('0213', 'EPH', 4, 31, 32),
	('0214', 'PHI', 4, 6, 7),
	('0215', 'COL', 3, 12, 14),
	('0216', '1TH', 5, 16, 18),
	('0217', '2TI', 3, 16, 17),
	('0218', 'HEB', 11, 1, 3),
	('0219', 'JAM', 4, 7, 8),
	('0220', '1PE', 5, 6, 7),
	('0221', '2PE', 1, 3, 4),
	('0222', '1JO', 4, 18, 19),
	('0223', 'JUD', 1, 20, 21),
	('0224', 'REV', 3, 20, 22),
	('0225', 'PSA', 23, 1, 4),
	('0226', 'PRO', 3, 5, 6),
	('0227', 'ISA', 40, 31, 31),
	('0228', 'MAT', 6, 33, 34),
	('0229', 'TIT', 2, 11, 12),
    ('0301', 'MAR', 11, 24, 25),
	('0302', 'LUK', 11, 28, 28),
	('0303', 'JOH', 14, 27, 27),
	('0304', 'ROM', 5, 8, 8),
	('0305', '1CO', 13, 4, 8),
	('0306', 'GAL', 5, 22, 23),
	('0307', 'EPH', 6, 10, 11),
	('0308', 'PHI', 4, 13, 13),
	('0309', 'COL', 3, 23, 24),
	('0310', '1TH', 5, 11, 11),
	('0311', '2TH', 3, 16, 16),
	('0312', '1TI', 6, 6, 8),
	('0313', '2TI', 1, 7, 7),
	('0314', 'TIT', 2, 11, 12),
	('0315', 'PHM', 1, 4, 4),
	('0316', 'HEB', 12, 1, 2),
	('0317', 'JAM', 1, 5, 6),
	('0318', '1PE', 3, 15, 16),
	('0319', '2PE', 3, 9, 10),
	('0320', '1JO', 4, 19, 21),
	('0321', '2JO', 1, 12, 12),
	('0322', '3JO', 1, 13, 14),
	('0323', 'JUD', 1, 20, 21),
	('0324', 'REV', 1, 3, 3),
	('0325', 'ACT', 1, 8, 8),
	('0326', 'PRO', 10, 4, 5),
	('0327', 'ECC', 12, 13, 14),
	('0328', 'SOS', 2, 10, 10),
	('0329', 'ISA', 55, 8, 9),
	('0330', 'JER', 33, 3, 4),
	('0331', 'LAM', 3, 22, 23),
    ('0412', '2TI', 3, 14, 15),
	('0401', 'ROM', 12, 1, 2),
	('0402', '1CO', 10, 13, 13),
	('0403', '2CO', 5, 17, 17),
	('0404', 'GAL', 2, 20, 20),
	('0405', 'EPH', 4, 32, 32),
	('0406', 'PHP', 4, 6, 7),
	('0407', 'COL', 3, 16, 17),
	('0408', '1TH', 5, 16, 18),
	('0409', '2TH', 3, 3, 3),
	('0410', '1TI', 4, 12, 13),
	('0411', '2TI', 3, 16, 17),	
	('0413', 'TIT', 3, 5, 6),
	('0414', 'PHM', 1, 6, 7),
	('0415', 'HEB', 4, 16, 16),
	('0416', 'JAM', 5, 16, 18),
	('0417', '1PE', 5, 10, 11),
	('0418', '2PE', 1, 20, 21),
	('0419', '1JO', 1, 7, 9),
	('0420', '2JO', 1, 6, 6),
	('0421', '3JO', 1, 11, 11),
	('0422', 'JUD', 1, 20, 21),
	('0423', 'REV', 22, 20, 21),
	('0424', 'PSA', 23, 1, 6),
	('0425', 'PRO', 3, 7, 8),
	('0426', 'ISA', 41, 10, 10),
	('0427', 'MAT', 11, 28, 30),
	('0428', 'MAR', 12, 30, 31),
	('0429', 'LUK', 12, 6, 7),
	('0430', 'JOH', 14, 1, 3),
	('0501', 'ACT', 1, 8, 8),
	('0502', 'ROM', 8, 28, 28),
	('0503', '1CO', 16, 14, 14),
	('0504', '2CO', 9, 7, 7),
	('0505', 'GAL', 5, 22, 23),
	('0506', 'EPH', 2, 8, 9),
	('0507', 'PHP', 4, 6, 7),
	('0508', 'COL', 3, 23, 24),
	('0509', '1TH', 5, 16, 18),
	('0510', '2TH', 3, 16, 16),
	('0511', '1TI', 4, 12, 12),
	('0512', '2TI', 3, 14, 15),
	('0513', 'TIT', 3, 5, 6),
	('0514', 'PHM', 1, 6, 7),
	('0515', 'HEB', 4, 16, 16),
	('0516', 'JAS', 5, 16, 18),
	('0517', '1PE', 5, 10, 11),
	('0518', '2PE', 1, 20, 21),
	('0519', '1JN', 1, 7, 9),
	('0520', '2JN', 1, 6, 6),
	('0521', '3JN', 1, 11, 11),
	('0522', 'JUD', 1, 20, 21),
	('0523', 'REV', 22, 20, 21),
	('0524', 'PSA', 100, 4, 5),
	('0525', 'PRO', 16, 9, 9),
	('0526', 'ISA', 26, 3, 4),
	('0527', 'MAT', 28, 19, 20),
	('0528', 'MRK', 16, 15, 16),
	('0529', 'LUK', 10, 27, 28),
	('0530', 'JHN', 8, 31, 32),
	('0531', 'ACT', 4, 12, 12),
    ('0601', 'ROM', 1, 16, 17),
	('0602', '1CO', 1, 18, 19),
	('0603', '2CO', 5, 17, 17),
	('0604', 'GAL', 2, 20, 21),
	('0605', 'EPH', 1, 3, 4),
	('0606', 'PHP', 1, 6, 7),
	('0607', 'COL', 1, 15, 16),
	('0608', '1TH', 5, 16, 18),
	('0609', '2TH', 3, 16, 17),
	('0610', '1TI', 4, 12, 12),
	('0611', '2TI', 3, 14, 15),
	('0612', 'TIT', 3, 5, 6),
	('0613', 'PHM', 1, 6, 7),
	('0614', 'HEB', 4, 16, 16),
	('0615', 'JAS', 5, 16, 18),
	('0616', '1PE', 5, 10, 11),
	('0617', '2PE', 1, 20, 21),
	('0618', '1JN', 1, 7, 9),
	('0619', '2JN', 1, 6, 6),
	('0620', '3JN', 1, 11, 11),
	('0621', 'JUD', 1, 20, 21),
	('0622', 'REV', 22, 20, 21),
	('0623', 'PSA', 23, 1, 6),
	('0624', 'PRO', 3, 7, 8),
	('0625', 'ISA', 41, 10, 10),
	('0626', 'MAT', 11, 28, 30),
	('0627', 'MRK', 12, 30, 31),
	('0628', 'LUK', 12, 6, 7),
	('0629', 'JHN', 14, 1, 3),
	('0630', 'ACT', 1, 8, 8),
	('0701', 'ROM', 8, 28, 28),
	('0702', '1CO', 16, 14, 14),
	('0703', '2CO', 9, 7, 7),
	('0704', 'GAL', 5, 22, 23),
	('0705', 'EPH', 2, 8, 9),
	('0706', 'PHP', 4, 6, 7),
	('0707', 'COL', 3, 23, 24),
	('0708', '1TH', 5, 16, 18),
	('0709', '2TH', 3, 16, 16),
	('0710', '1TI', 4, 12, 12),
	('0711', '2TI', 3, 14, 15),
	('0712', 'TIT', 3, 5, 6),
	('0713', 'PHM', 1, 6, 7),
	('0714', 'HEB', 4, 16, 16),
	('0715', 'JAS', 5, 16, 18),
	('0716', '1PE', 5, 10, 11),
	('0717', '2PE', 1, 20, 21),
	('0718', '1JN', 1, 7, 9),
	('0719', '2JN', 1, 6, 6),
	('0720', '3JN', 1, 11, 11),
	('0721', 'JUD', 1, 20, 21),
	('0722', 'REV', 22, 20, 21),
	('0723', 'PSA', 100, 4, 5),
	('0724', 'PRO', 16, 9, 9),
	('0725', 'ISA', 26, 3, 4),
	('0726', 'MAT', 28, 19, 20),
	('0727', 'MRK', 16, 15, 16),
	('0728', 'LUK', 10, 27, 28),
	('0729', 'JHN', 8, 31, 32),
	('0730', 'ACT', 4, 12, 12),
	('0731', 'ROM', 1, 16, 17)
    ('0801', '1COR', 1, 18, 19),
	('0802', '2COR', 5, 17, 17),
	('0803', 'GAL', 2, 20, 21),
	('0804', 'EPH', 1, 3, 4),
	('0805', 'PHIL', 1, 6, 7),
	('0806', 'COL', 1, 15, 16),
	('0807', '1THES', 5, 16, 18),
	('0808', '2THES', 3, 16, 16),
	('0809', '1TIM', 4, 12, 12),
	('0810', '2TIM', 3, 14, 15),
	('0811', 'TITUS', 3, 5, 6),
	('0812', 'PHLM', 1, 6, 7),
	('0813', 'HEB', 4, 16, 16),
	('0814', 'JAS', 5, 16, 18),
	('0815', '1PET', 5, 10, 11),
	('0816', '2PET', 1, 20, 21),
	('0817', '1JN', 1, 7, 9),
	('0818', '2JN', 1, 6, 6),
	('0819', '3JN', 1, 11, 11),
	('0820', 'JUDE', 1, 20, 21),
	('0821', 'REV', 22, 20, 21),
	('0822', 'PS', 23, 1, 6),
	('0823', 'PROV', 3, 7, 8),
	('0824', 'ISA', 41, 10, 10),
	('0825', 'MATT', 11, 28, 30),
	('0826', 'MARK', 12, 30, 31),
	('0827', 'LUKE', 12, 6, 7),
	('0828', 'JOHN', 14, 1, 3),
	('0829', 'ACTS', 1, 8, 8),
	('0830', 'ROM', 8, 28, 28),
	('0831', '1COR', 16, 14, 14),
	('0901', '2COR', 9, 7, 7),
	('0902', 'GAL', 5, 22, 23),
	('0903', 'EPH', 2, 8, 9),
	('0904', 'PHIL', 4, 6, 7),
	('0905', 'COL', 3, 23, 24),
	('0906', '1THES', 5, 16, 18),
	('0907', '2THES', 3, 16, 16),
	('0908', '1TIM', 4, 12, 12),
	('0909', '2TIM', 3, 14, 15),
	('0910', 'TITUS', 3, 5, 6),
	('0911', 'PHLM', 1, 6, 7),
	('0912', 'HEB', 4, 16, 16),
	('0913', 'JAS', 5, 16, 18),
	('0914', '1PET', 5, 10, 11),
	('0915', '2PET', 1, 20, 21),
	('0916', '1JN', 1, 7, 9),
	('0917', '2JN', 1, 6, 6),
	('0918', '3JN', 1, 11, 11),
	('0919', 'JUDE', 1, 20, 21),
	('0920', 'REV', 22, 20, 21),
	('0921', 'PS', 100, 4, 5),
	('0922', 'PROV', 16, 9, 9),
	('0923', 'ISA', 26, 3, 4),
	('0924', 'MATT', 28, 19, 20),
	('0925', 'MARK', 16, 15, 16),
	('0926', 'LUKE', 10, 27, 28),
	('0927', 'JOHN', 8, 31, 32),
	('0928', 'ACTS', 4, 12, 12),
	('0929', 'ROM', 1, 16, 17),
	('0930', 'PHLM', 1, 4, 6),
    ('1001', '1COR', 1, 18, 19),
	('1002', '2COR', 5, 17, 17),
	('1003', 'GAL', 2, 20, 21),
	('1004', 'EPH', 1, 3, 4),
	('1005', 'PHIL', 1, 6, 7),
	('1006', 'COL', 1, 15, 16),
	('1007', '1THES', 5, 16, 18),
	('1008', '2THES', 3, 16, 16),
	('1009', '1TIM', 4, 12, 12),
	('1010', '2TIM', 3, 14, 15),
	('1011', 'TITUS', 3, 5, 6),
	('1012', 'PHLM', 1, 6, 7),
	('1013', 'HEB', 4, 16, 16),
	('1014', 'JAS', 5, 16, 18),
	('1015', '1PET', 5, 10, 11),
	('1016', '2PET', 1, 20, 21),
	('1017', '1JN', 1, 7, 9),
	('1018', '2JN', 1, 6, 6),
	('1019', '3JN', 1, 11, 11),
	('1020', 'JUDE', 1, 20, 21),
	('1021', 'REV', 22, 20, 21),
	('1022', 'PS', 23, 1, 6),
	('1023', 'PROV', 3, 7, 8),
	('1024', 'ISA', 41, 10, 10),
	('1025', 'MATT', 11, 28, 30),
	('1026', 'MARK', 12, 30, 31),
	('1027', 'LUKE', 12, 6, 7),
	('1028', 'JOHN', 14, 1, 3),
	('1029', 'ACTS', 1, 8, 8),
	('1030', 'ROM', 8, 28, 28),
	('1031', '1COR', 16, 14, 14),
	('1101', '2COR', 9, 7, 7),
	('1102', 'GAL', 5, 22, 23),
	('1103', 'EPH', 2, 8, 9),
	('1104', 'PHIL', 4, 6, 7),
	('1105', 'COL', 3, 23, 24),
	('1106', '1THES', 5, 16, 18),
	('1107', '2THES', 3, 16, 16),
	('1108', '1TIM', 4, 12, 12),
	('1109', '2TIM', 3, 14, 15),
	('1110', 'TITUS', 3, 5, 6),
	('1111', 'PHLM', 1, 6, 7),
	('1112', 'HEB', 4, 16, 16),
	('1113', 'JAS', 5, 16, 18),
	('1114', '1PET', 5, 10, 11),
	('1115', '2PET', 1, 20, 21),
	('1116', '1JN', 1, 7, 9),
	('1117', '2JN', 1, 6, 6),
	('1118', '3JN', 1, 11, 11),
	('1119', 'JUDE', 1, 20, 21),
	('1120', 'REV', 22, 20, 21),
	('1121', 'PS', 100, 4, 5),
	('1122', 'PROV', 16, 9, 9),
	('1123', 'ISA', 26, 3, 4),
	('1124', 'MATT', 28, 19, 20),
	('1125', 'MARK', 16, 15, 16),
	('1126', 'LUKE', 10, 27, 28),
	('1127', 'JOHN', 8, 31, 32),
	('1128', 'ACTS', 4, 12, 12),
	('1129', 'ROM', 1, 16, 17),
	('1130', '2COR', 9, 7, 7),
    ('1201', '1COR', 1, 18, 19),
	('1202', '2COR', 5, 17, 17),
	('1203', 'GAL', 2, 20, 21),
	('1204', 'EPH', 1, 3, 4),
	('1205', 'PHIL', 1, 6, 7),
	('1206', 'COL', 1, 15, 16),
	('1207', '1THES', 5, 16, 18),
	('1208', '2THES', 3, 16, 16),
	('1209', '1TIM', 4, 12, 12),
	('1210', '2TIM', 3, 14, 15),
	('1211', 'TITUS', 3, 5, 6),
	('1212', 'PHLM', 1, 6, 7),
	('1213', 'HEB', 4, 16, 16),
	('1214', 'JAS', 5, 16, 18),
	('1215', '1PET', 5, 10, 11),
	('1216', '2PET', 1, 20, 21),
	('1217', '1JN', 1, 7, 9),
	('1218', '2JN', 1, 6, 6),
	('1219', '3JN', 1, 11, 11),
	('1220', 'JUDE', 1, 20, 21),
	('1221', 'REV', 22, 20, 21),
	('1222', 'PS', 23, 1, 6),
	('1223', 'PROV', 3, 7, 8),
	('1224', 'ISA', 41, 10, 10),
	('1225', 'MATT', 11, 28, 30),
	('1226', 'MARK', 12, 30, 31),
	('1227', 'LUKE', 12, 6, 7),
	('1228', 'JOHN', 14, 1, 3),
	('1229', 'ACTS', 1, 8, 8),
	('1230', 'ROM', 8, 28, 28),
	('1231', '1COR', 16, 14, 14);
--
-- Insert test data into FAVORITES table
INSERT INTO FAVORITES (user_id, verse_id) 
VALUES
    (1, 0101),
    (1, 0102),
    (2, 0103),
    (2, 0104),
    (3, 0105),
    (4, 0106),
    (5, 0107),
    (5, 0109),
    (5, 0110);
