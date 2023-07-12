CREATE DATABASE Eisif_technologie;
CREATE table Client(
    id_client int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(255),
    Prenom varchar(255),
    Adresse varchar(255),
    Telephone INT(255)
);
CREATE table fournisseur(
    id_fournisseur int(11) PRIMARY KEY NOT NULL,
    Nom varchar(250),
    Prenom varchar(250),
    Adresse varchar(255),
    Telephone int(15),
);
CREATE TABLE Categorie(
    id_cat int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    libelle varchar(255),
);
CREATE TABLE article (
    id_article int PRIMARY KEY NOT NULL,
    designation varchar(255),
    marque varchar(255),
    id_cat int,
    FOREIGN KEY (id_cat) REFERENCES Categorie(id_cat)
);
CREATE TABLE achat(
    id_achat int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantié varchar(255),
    prix varchar(255),
    date varchar(255),
    id_client int,
    id_article int,
    id_fournisseur int,
    FOREIGN KEY(id_client) REFERENCES client(id_client)
    ,FOREIGN KEY(id_article) REFERENCES article(id_article)
    ,FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);
CREATE TABLE Vente(
    id_vente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prix int(11) date varchar(255),
    id_client int,
    id_article int,
    FOREIGN KEY(id_client) REFERENCES client(id_client),
    ,FOREIGN KEY(id_article) REFERENCES article(id_article)
);
INSERT INTO client (Nom,Prenom,Adresse,Telephone)
VALUES ('Marayo','Rucien','Wemtenga','54006250'),
        ('Tarpilga','Kadidjatou','Karpala','56202034'),
        ('Kabore','Benjamin', 'Zogona','55302020'),
        ('Zongo','Demsy','Padoua','53180699'),
         ('Ramde','Jean','zad','63218564');
    


INSERT INTO categorie ( id_cat,libelle)
VALUES (1, 'Ordinateur'), 
       (2, 'Telephone'), 
       (3, 'Souris'), 
       (4, 'radio'), 
       (5, 'tele');