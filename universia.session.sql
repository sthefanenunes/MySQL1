USE minhasaulas;

CREATE TABLE IF NOT EXISTS CLIENTE(
    ID int not null AUTO_INCREMENT PRIMARY KEY,
    NOME varchar(60) NOT NULL,
    EMAIL VARCHAR(255),
    TELEFONE VARCHAR(20),
    IDADE int
);

DESCRIBE CLIENTE;

/*INSERÇÃO DE CLIENTES*/

INSERT INTO CLIENTE (nome, email, telefone, idade)
VALUES
    ('João Silva', 'joao@example.com', '9456-7890', 25),
    ('Maria Oliveira', 'maria@example.com', '9654-3210', 30),
    ('Carlos Santos', 'carlos@example.com', '9222-3333', 22),
    ('Ana Souza', 'ana@example.com', '9554-7777', 35),
    ('Paulo Lima', 'paulo@example.com', '9998-1111', 28);

SELECT * FROM CLIENTE;

/*===================================PRODUTOS===================================*/    

CREATE TABLE IF NOT EXISTS PRODUTOS(
    CODIGO int not null AUTO_INCREMENT PRIMARY KEY,
    NOME varchar(150) NOT NULL,
    PRECO DECIMAL(10,2) NOT NULL,
    QUANTIDADE INT NOT NULL
);

DESCRIBE PRODUTOS;

/*INSERÇÃO DE PRODUTOS*/

INSERT INTO produtos (nome, preco, quantidade)
VALUES
    ('Frasco de bebida em forma de rosquinha', 119.99, 50),
    ('Chaveiros em Forma de Cubos de Bacon ', 29.99, 30),
    ('Pente Retrátil', 39.99, 100);

SELECT * FROM PRODUTOS;

/*===================================INTENS===================================*/

CREATE TABLE IF NOT EXISTS ITENS(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_CLIENTE INT,
    CODIGO_PRODUTO INT,
    CONSTRAINT fk_ITENS  Foreign Key (ID_CLIENTE) REFERENCES CLIENTE(ID),
    CONSTRAINT fk_ITENS1 Foreign Key (CODIGO_PRODUTO) REFERENCES PRODUTOS(CODIGO),
    QUANTIDADE INT NOT NULL
);

DESCRIBE ITENS;

/*INSERÇÃO DE ITENS*/

INSERT INTO itens (codigo_produto, id_cliente, quantidade)
VALUES
    (1, 1, 2),
    (2, 2, 5),
    (3, 3, 1),
    (1, 4, 3),
    (2, 5, 4);

SELECT * FROM ITENS;    


