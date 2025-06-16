-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);

-- Inserção de dados na tabela Produtos
INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('Livro: Aprendendo SQL', 'Livro para iniciantes em SQL', 59.90, 10),
('Livro: Git para Iniciantes', 'Guia prático para Git e GitHub', 49.90, 5),
('Marcador de Página', 'Marcador colorido para livros', 5.00, 100);

-- Inserção de dados na tabela Pedidos
INSERT INTO Pedidos (data_pedido, id_produto, quantidade) VALUES
('2025-06-15', 1, 2),
('2025-06-16', 3, 5),
('2025-06-16', 2, 1);
