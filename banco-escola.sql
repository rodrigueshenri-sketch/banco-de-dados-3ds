CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

CREATE TABLE Aluno (
    id_aluno INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(200),
    PRIMARY KEY (id_aluno)
);

CREATE TABLE Professor (
    id_professor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    PRIMARY KEY (id_professor)
);

CREATE TABLE Turma (
    id_turma INT NOT NULL AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL,
    ano_letivo INT,
    id_professor INT,
    PRIMARY KEY (id_turma),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE Matricula (
    id_matricula INT NOT NULL AUTO_INCREMENT,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    PRIMARY KEY (id_matricula),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);
