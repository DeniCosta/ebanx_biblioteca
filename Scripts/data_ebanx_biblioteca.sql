-- Tabela ISBN (Informações detalhadas sobre os livros)
INSERT INTO ISBN (isbn, titulo, editora, edicao, ano, pais, paginas, tipo)
VALUES
  (9788535908066, 'Grande Sertão: Veredas', 'Nova Fronteira', 1, 1956, 'Brasil', 656, 'papel'),
  (9788535911929, 'Dom Casmurro', 'Companhia das Letras', 1, 1899, 'Brasil', 256, 'papel'),
  (9788501056169, 'Memórias Póstumas de Brás Cubas', 'Editora Globo', 1, 1881, 'Brasil', 240, 'papel'),
  (9788503012907, 'Vidas Secas', 'Editora Record', 1, 1938, 'Brasil', 184, 'papel'),
  (9788571642742, 'Claro Enigma', 'Nova Fronteira', 1, 1951, 'Brasil', 352, 'papel'),
  (9788525424432, 'Quarto de Despejo: Diário de uma Favelada', 'Ática', 1, 1960, 'Brasil', 208, 'papel'),
  (9788520933620, 'Quincas Borba', 'Editora Nova Aguilar', 1, 1891, 'Brasil', 352, 'papel');

-- Tabela Autor (Informações sobre os autores dos livros)
INSERT INTO Autor (nome, nacionalidade)
VALUES
  ('João Guimarães Rosa', 'Brasil'),
  ('Machado de Assis', 'Brasil'),
  ('Graciliano Ramos', 'Brasil'),
  ('Carlos Drummond de Andrade', 'Brasil'),
  ('Carolina Maria de Jesus', 'Brasil'),
  ('Mário de Andrade', 'Brasil');

-- Tabela ISBN_Autor (Tabela intermediária para o relacionamento n:m entre ISBN e Autor)
INSERT INTO ISBN_Autor (isbn, id_autor)
VALUES
  (9788535908066, 1), -- Livro 1 com autor 1
  (9788535911929, 2), -- Livro 2 com autor 2
  (9788501056169, 2), -- Livro 3 com autor 2
  (9788503012907, 3), -- Livro 4 com autor 3
  (9788571642742, 4), -- Livro 5 com autor 4
  (9788525424432, 5), -- Livro 6 com autor 5
  (9788520933620, 2), -- Livro 7 com autor 2
  (9788535911929, 6), -- Livro 2 com autor 6
  (9788535908066, 6); -- Livro 1 com autor 6

-- Tabela Categoria (Categorias dos livros)
INSERT INTO Categoria (nome)
VALUES
  ('Romance'),
  ('Ficção Brasileira'),
  ('Romance Brasileiro'),
  ('Biografia'),
  ('Ficção Literária'),
  ('Poesia');

-- Tabela LocalizacaoLivro (Informações de localização dos livros no acervo)
INSERT INTO LocalizacaoLivro (sessao, estante, prateleira, outras_informacoes)
VALUES
  ('Romance', 'Estante 1', 'Prateleira A', 'Melhor ler com calma'), -- Livro 1
  ('Romance Brasileiro', 'Estante 2', 'Prateleira B', 'Um clássico da literatura brasileira'), -- Livro 2
  ('Romance Brasileiro', 'Estante 2', 'Prateleira C', 'Importante obra literária brasileira'), -- Livro 3
  ('Romance', 'Estante 1', 'Prateleira B', 'Um retrato da vida no sertão nordestino'), -- Livro 4
  ('Poesia', 'Estante 3', 'Prateleira A', 'Coletânea de poemas'), -- Livro 5
  ('Biografia', 'Estante 4', 'Prateleira B', 'Relato autobiográfico sobre a vida na favela'), -- Livro 6
  ('Romance Brasileiro', 'Estante 2', 'Prateleira D', 'Continuação das ideias de "Dom Casmurro"'), -- Livro 7
  ('Ficção Literária', 'Estante 3', 'Prateleira C', 'Um clássico da FC'), -- Livro 2
  ('Literatura Infantil', 'Estante 5', 'Prateleira A', 'Para crianças de todas as idades'); -- Livro 1

-- Tabela Livro (Livros registrados na biblioteca)
INSERT INTO Livro (isbn, id_categoria, id_localizacao)
VALUES
  (9788535908066, 1, 1), -- Livro 1
  (9788535911929, 2, 2), -- Livro 2
  (9788501056169, 3, 3), -- Livro 3
  (9788503012907, 4, 4), -- Livro 4
  (9788571642742, 5, 5), -- Livro 5
  (9788525424432, 6, 6), -- Livro 6
  (9788520933620, 1, 7), -- Livro 7
  (9788535911929, 2, 2), -- Livro 2
  (9788535908066, 1, 1); -- Livro 1