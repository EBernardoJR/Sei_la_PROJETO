CREATE SCHEMA pokemon_bd;
USE pokemon_bd;

CREATE TABLE Type1 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Type1 VARCHAR(9)
);

CREATE TABLE hp (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    HP INT
);

CREATE TABLE attack (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    attack INT
);
CREATE TABLE defense (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    defense INT
);
CREATE TABLE speed (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    speed INT
);
CREATE TABLE pokemon (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(35),
    Type1 INT,
    hp INT,
    attack INT,
    defense INT,
    speed INT,
    FOREIGN KEY (Type1) REFERENCES Type1(ID),
    FOREIGN KEY (attack) REFERENCES attack(ID),
    FOREIGN KEY (hp) REFERENCES hp(ID),
    FOREIGN KEY (defense) REFERENCES defense(ID),
    FOREIGN KEY (speed) REFERENCES speed(ID)
);

select * from pokemon;
select * from hp;
select * from attack;
select * from defense;
select * from speed;
select * from type1;