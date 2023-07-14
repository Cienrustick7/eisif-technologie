CREATE DATABASE Eisif_technologie;


CREATE table client(
    id_client INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255),
    telephone INT(255)
);
CREATE table fournisseur(
    id_fournisseur INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(250),
    prenom VARCHAR(250),
    adresse VARCHAR(255),
    telephone INT(15)
);
CREATE TABLE categorie(
    id_cat INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    libelle VARCHAR(255)

);
CREATE TABLE article (
    id_article INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    designation VARCHAR(255),
    id_cat INT,
    FOREIGN KEY (id_cat) REFERENCES categorie(id_cat)
);
CREATE TABLE achat(
    id_achat INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantié INT(255),
    prix_achat INT(10),
    prix_vente INT(10),
    id_article INT,
    id_fournisseur INT,
    FOREIGN KEY(id_article) REFERENCES article(id_article),
    FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);
CREATE TABLE vente(
    id_vente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prix INt(11),
    date INT,
    id_client int,
    id_article int,
    FOREIGN KEY(id_client) REFERENCES client(id_client),
    FOREIGN KEY(id_article) REFERENCES article(id_article)
);

INSERT INTO client(nom,prenom,adresse,telephone)
VALUES ('Marayo','Rucien','Wemtenga','54006250'),
        ('Tarpilga','Kadidjatou','Karpala','56202034'),
        ('Kabore','Benjamin','Zogona','55302020'),
        ('Zongo','Demsy','Padoua','53180699'),
         ('Ramde','Jean','zad','63218564');
    


INSERT INTO categorie (libelle)
VALUES ('ordinateur'), 
       ('telephone'), 
       ('souris'), 
       ('radio'), 
       ('tele');


INSERT INTO fournisseur(nom,prenom,adresse,telephone)
VALUES('ouedraogo','leaticia','zad','25422564'),
      ('zerbo','antoine','tampuiy','61856582'),
      ('tarnagda','victorine','karpala','65258645'),
      ('wandaogo','natacha','zogona','56245362'),
      ('zongo','wilfried','kalngode','77856985');


INSERT INTO article(id_cat,designation)
VALUES ('1','HP probook'),
        ('2','infinix'), 
       ('3', 'asus'), 
       ('4', 'sony'), 
       ('5', 'sasung');



INSERT INTO achat(id_fournisseur,id_article,prix_achat, prix_vente)
VALUES ('3', '1','10000','75000'), ('1', '2','3600','158000'), 
       ('4', '2','7000','78000'), ('2', '4','5500','57000'),
       ('3', '3','8250','145800');


INSERT INTO vente(id_client,id_article,date,prix)
VALUES ('3', '1', '2023-07-10', '5250'), ('1', '2', '2023-07-10', '2600'), 
       ('4', '2', '2023-07-11', '9000'), ('2', '4', '2023-07-11', '7500'), 
       ('3', '3', '2023-07-11', '8000');

