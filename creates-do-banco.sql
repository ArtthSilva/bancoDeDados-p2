CREATE DATABASE biblioteca;

CREATE TABLE Livros (
   id SERIAL PRIMARY KEY,
   titulo VARCHAR(255),
   autor VARCHAR(255),
   genero VARCHAR(255),
   ano_publicacao INTEGER,
   num_paginas INTEGER,
   editora VARCHAR(255)
);

CREATE TABLE Clientes (
   id SERIAL PRIMARY KEY,
   nome VARCHAR(255),
   email VARCHAR(255),
   data_nascimento DATE,
   numero_telefone VARCHAR(15)
);

CREATE TABLE Emprestimos (
 id SERIAL PRIMARY KEY,
 data_emprestimo DATE,
 data_devolucao DATE,
 status_emprestimo VARCHAR(255),
 livro_id INTEGER,
 cliente_id INTEGER,
 FOREIGN KEY (livro_id)
 REFERENCES Livros(id),
 FOREIGN KEY (cliente_id)
 REFERENCES Clientes(id)
);


CREATE TABLE Bibliotecarios (
   id SERIAL PRIMARY KEY,
   nome VARCHAR(255),
   rg VARCHAR(14),
   cpf VARCHAR(11),
   telefone VARCHAR(15)
);
