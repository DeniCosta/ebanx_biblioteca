CREATE DATABASE IF NOT EXISTS biblioteca_ebanx;
USE biblioteca_ebanx;

-- Tabela ISBN (Informações detalhadas sobre os livros)
CREATE TABLE ISBN (
  isbn BIGINT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  editora VARCHAR(100) NOT NULL,
  edicao INT NOT NULL,
  ano INT NOT NULL,
  pais VARCHAR(50) NOT NULL,
  paginas INT NOT NULL,
  tipo VARCHAR(20) NOT NULL
);

-- Tabela Autor (Informações sobre os autores dos livros)
CREATE TABLE  Autor (
  id_autor INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  nacionalidade VARCHAR(50) NOT NULL
);

-- Tabela ISBN_Autor (Tabela intermediária para o relacionamento n:m entre ISBN e Autor)
CREATE TABLE ISBN_Autor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  isbn BIGINT NOT NULL,
  id_autor INT NOT NULL,
  
  -- Relacionamento entre ISBN_Autor e ISBN (Um registro em ISBN_Autor está associado a um ISBN)
  FOREIGN KEY (isbn) REFERENCES ISBN(isbn),
  
  -- Relacionamento entre ISBN_Autor e Autor (Um registro em ISBN_Autor está associado a um Autor)
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- Tabela Categoria (Categorias dos livros)
CREATE TABLE Categoria (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

-- Tabela LocalizacaoLivro (Informações de localização dos livros no acervo)
CREATE TABLE LocalizacaoLivro (
  id_localizacao INT PRIMARY KEY AUTO_INCREMENT,
  sessao VARCHAR(100) NOT NULL,
  estante VARCHAR(100) NOT NULL,
  prateleira VARCHAR(100) NOT NULL,
  outras_informacoes TEXT
);

-- Tabela Livro (Livros registrados na biblioteca)
CREATE TABLE Livro (
  chamada INT PRIMARY KEY AUTO_INCREMENT,
  isbn BIGINT NOT NULL,
  id_categoria INT NOT NULL,
  id_localizacao INT NOT NULL,
  
  -- Relacionamento entre Livro e ISBN (Um livro está associado a um ISBN)
  FOREIGN KEY (isbn) REFERENCES ISBN(isbn),
  
  -- Relacionamento entre Livro e Categoria (Um livro está associado a uma categoria)
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
  
  -- Relacionamento entre Livro e LocalizacaoLivro (Um livro está associado a uma localização no acervo)
  FOREIGN KEY (id_localizacao) REFERENCES LocalizacaoLivro(id_localizacao)
);