INSERT INTO Livros (titulo, autor, genero, ano_publicacao, num_paginas, editora)
VALUES ('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Fantasia', 1954, 1178, 'HarperCollins'),
      ('1984', 'George Orwell', 'Distopia', 1949, 328, 'Seix Barral'),
      ('O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937, 304, 'HarperCollins');

INSERT INTO Clientes (nome, email, data_nascimento, numero_telefone)
VALUES ('João Silva', 'joao.silva@email.com', '1980-01-01', '11987654321'),
      ('Maria Souza', 'maria.souza@email.com', '1990-02-02', '22987654321'),
      ('Carlos Oliveira', 'carlos.oliveira@email.com', '1995-03-03', '33987654321');

INSERT INTO Bibliotecarios (nome, rg, cpf, telefone)
VALUES ('Carlos Oliveira', '123456789', '11111111111', '11987654321'),
      ('Maria Souza', '987654321', '22222222222', '22987654321'),
      ('João Silva', '345678912', '33333333333', '33987654321');

INSERT INTO Emprestimos (data_emprestimo, data_devolucao, status_emprestimo, livro_id, cliente_id)
VALUES ('2023-11-29', '2023-12-29', 'Emprestado', 
      (SELECT id FROM Livros WHERE titulo = 'O Senhor dos Anéis'),
      (SELECT id FROM Clientes WHERE nome = 'João Silva'));

INSERT INTO Emprestimos (data_emprestimo, data_devolucao, status_emprestimo, livro_id, cliente_id)
VALUES ('2023-11-29', '2023-12-29', 'Emprestado', 
      (SELECT id FROM Livros WHERE titulo = '1984'),
      (SELECT id FROM Clientes WHERE nome = 'Maria Souza'));

INSERT INTO Emprestimos (data_emprestimo, data_devolucao, status_emprestimo, livro_id, cliente_id)
VALUES ('2023-11-29', '2023-12-29', 'Emprestado', 
      (SELECT id FROM Livros WHERE titulo = 'O Hobbit'),
      (SELECT id FROM Clientes WHERE nome = 'Carlos Oliveira'));
