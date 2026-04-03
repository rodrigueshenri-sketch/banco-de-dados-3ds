DROP TABLE Aluno;
Drop TABLE Escola;
DROP TABLE Professor;

-- Criação da tabela Aluno
CREATE TABLE  Aluno (
    id_aluno INT PRIMARY KEY, -- Identificação única do aluno
    nome VARCHAR(50),
    idade INT
);

-- Criação da tabela Professor
CREATE TABLE Professor (
    id_professor INT PRIMARY KEY, -- Identificação única do professor
    nome_professor VARCHAR(50),
    cpf_professor VARCHAR(11) -- CPF do professor com tamanho padrão de 11 caracteres
);

-- Criação da tabela Escola
CREATE TABLE Escola (
    id_escola INT PRIMARY KEY, -- Identificação única da escola
    nome_escola VARCHAR(50),
    cnpj_escola VARCHAR(14) -- CNPJ da escola com tamanho padrão de 14 caracteres
);

-- Inserindo dados na tabela Aluno
INSERT INTO Aluno (id_aluno, nome, idade)
VALUES
(1, 'Ana Costa', 18),
(2, 'João Silva', 20),
(3, 'Maria Oliveira', 19),
(4, 'Carlos Souza', 21),
(5, 'Fernanda Lima', 22);

-- Inserindo dados na tabela Professor
INSERT INTO Professor (id_professor, nome_professor, cpf_professor)
VALUES
(1, 'Carlos Mendes', '12345678901'),
(2, 'Juliana Rocha', '98765432100'),
(3, 'Ricardo Alves', '45678912345');

-- Inserindo dados na tabela Escola
INSERT INTO Escola (id_escola, nome_escola, cnpj_escola)
VALUES
(1, 'Escola Alpha', '12345678000199'),
(2, 'Colégio Beta', '98765432000188'),
(3, 'Instituto Gamma', '45678912000177');

SELECT * FROM Aluno;