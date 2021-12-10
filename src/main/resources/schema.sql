DROP TABLE IF EXISTS test_type CASCADE;
DROP TABLE IF EXISTS test CASCADE;
DROP TABLE IF EXISTS test_detail CASCADE;

CREATE TABLE test_type(
    seq bigint NOT NULL AUTO_INCREMENT, -- test enum type pk
    type_name varchar(20) NOT NULL, -- test enum type
    PRIMARY KEY(seq)
);

CREATE TABLE test (
    seq bigint NOT NULL AUTO_INCREMENT, -- test pk
    type_seq bigint, -- test enum type seq
    type_2 enum('NONE', 'test01', 'test02', 'test03') DEFAULT 'NONE' NOT NULL,
    PRIMARY KEY(seq),
    CONSTRAINT fk_type_seq FOREIGN KEY (type_seq) REFERENCES test_type(seq) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE test_detail(
    seq bigint NOT NULL AUTO_INCREMENT, -- test detail pk
    test_seq bigint NOT NULL, -- test pk
    test_detail_name varchar(20) NOT NULL, -- test detail name
    PRIMARY KEY(seq),
    CONSTRAINT fk_test FOREIGN KEY(test_seq) REFERENCES test(seq) ON DELETE RESTRICT ON UPDATE RESTRICT
);