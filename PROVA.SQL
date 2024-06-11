```sql

create table Funcionario (
	id_funcionario					INTEGER PRIMARY KEY ,
	nome_funcionario				varchar(50) 		not null,  
	cargo						varchar(50)  		not  null,
	salario						float,
	data_contratacao				date
);
INSERT INTO Funcionario (nome_funcionario, cargo, salario, data_contratacao) VALUES 
('João Silva', 'Gerente de Vendas', 5000.00, '2023-02-15'),
('Maria Santos', 'Analista de Marketing', 3500.00, '2022-10-10'),
('Pedro Oliveira', 'Desenvolvedor Web', 4000.00, '2024-01-20'),
('Ana Costa', 'Contadora', 4500.00, '2023-05-05'),
('Lucas Pereira', 'Analista de Sistemas', 4800.00, '2022-09-18'),
('Juliana Mendes', 'Assistente Administrativo', 3000.00, '2024-03-10'),
('Fernando Souza', 'Analista Financeiro', 4200.00, '2023-11-22'),
('Camila Lima', 'Designer Gráfico', 3800.00, '2022-07-30'),
('Rafaela Santos', 'Engenheira Civil', 5500.00, '2023-04-12'),
('Gustavo Oliveira', 'Analista de Recursos Humanos', 4300.00, '2024-02-28'),
('Marcela Costa', 'Analista de Qualidade', 4700.00, '2022-12-05'),
('Thiago Almeida', 'Técnico de Suporte', 3200.00, '2023-08-17'),
('Carla Santos', 'Analista de Compras', 4000.00, '2024-05-08'),
('Henrique Vieira', 'Consultor de Negócios', 5200.00, '2022-11-03'),
('Larissa Rodrigues', 'Coordenadora de Projetos', 5800.00, '2023-07-25'),
('Mateus Oliveira', 'Analista de Logística', 4600.00, '2024-04-15'),
('Amanda Silva', 'Assistente de Marketing', 3200.00, '2022-06-12'),
('Diego Costa', 'Analista de Produção', 3900.00, '2023-03-05'),
('Patrícia Santos', 'Analista de RH', 4200.00, '2024-01-10'),
('Rodrigo Alves', 'Coordenador de Vendas', 5500.00, '2022-08-22');

create table Cliente (
	id_cliente					INTEGER PRIMARY KEY ,
	nome_cliente					varchar(100) 		not null,  
	email						varchar(100)  		not  null,
	nascimento					date				not  null,
 	numero_telefone					float				not  null
);

INSERT INTO Cliente (id_cliente, nome_cliente, email, nascimento, numero_telefone) VALUES 
(1, 'Carlos Oliveira', 'carlos@email.com', '1990-05-15', 123456789),
(2, 'Ana Silva', 'ana@email.com', '1985-08-20', 987654321),
(3, 'Pedro Santos', 'pedro@email.com', '1978-12-10', 555555555),
(4, 'Mariana Costa', 'mariana@email.com', '1995-03-25', 777777777),
(5, 'Lucas Pereira', 'lucas@email.com', '1989-06-30', 999999999),
(6, 'Juliana Lima', 'juliana@email.com', '1980-09-05', 333333333),
(7, 'Fernanda Oliveira', 'fernanda@email.com', '1992-11-12', 444444444),
(8, 'Rafaela Almeida', 'rafaela@email.com', '1987-04-18', 666666666),
(9, 'Gustavo Castro', 'gustavo@email.com', '1975-07-22', 222222222),
(10, 'Patrícia Mendes', 'patricia@email.com', '1983-02-28', 888888888),
(11, 'Diego Santos', 'diego@email.com', '1993-10-08', 111111111),
(12, 'Camila Costa', 'camila@email.com', '1986-01-14', 444444444),
(13, 'Roberto Oliveira', 'roberto@email.com', '1970-04-30', 555555555),
(14, 'Aline Souza', 'aline@email.com', '1991-07-07', 777777777),
(15, 'Marcos Lima', 'marcos@email.com', '1984-09-20', 888888888),
(16, 'Luciana Silva', 'luciana@email.com', '1977-11-26', 999999999),
(17, 'Carlos Santos', 'carloss@email.com', '1994-03-12', 222222222),
(18, 'Renata Costa', 'renata@email.com', '1982-06-16', 333333333),
(19, 'Paulo Oliveira', 'paulo@email.com', '1973-08-25', 666666666),
(20, 'Cristiane Alves', 'cristiane@email.com', '1988-12-05', 555555555);

create table Bicicleta (
	id_bicicleta				INTEGER PRIMARY KEY ,
	cor					varchar(100) 		not null,  
	tamanho					int  				not  null,
	modelo					varchar(100)		not  null,
 	marca					varchar(100)		not  null
);

INSERT INTO Bicicleta (id_bicicleta, cor, tamanho, modelo, marca) VALUES 
(1, 'Vermelha', 26, 'Mountain Bike', 'Caloi'),
(2, 'Azul', 24, 'Passeio', 'Monark'),
(3, 'Verde', 28, 'Speed', 'Specialized'),
(4, 'Preta', 20, 'Infantil', 'Bandeirante'),
(5, 'Amarela', 26, 'Mountain Bike', 'Oggi'),
(6, 'Branca', 24, 'Passeio', 'Giant'),
(7, 'Laranja', 28, 'Speed', 'Trek'),
(8, 'Roxa', 20, 'Infantil', 'Cannondale'),
(9, 'Cinza', 26, 'Mountain Bike', 'Scott'),
(10, 'Prata', 24, 'Passeio', 'Fuji'),
(11, 'Preto e Branco', 28, 'Speed', 'Bianchi'),
(12, 'Rosa', 20, 'Infantil', 'Raleigh'),
(13, 'Azul Marinho', 26, 'Mountain Bike', 'Kona'),
(14, 'Vermelha e Branca', 24, 'Passeio', 'Schwinn'),
(15, 'Roxa e Preta', 28, 'Speed', 'Pinarello'),
(16, 'Verde Limão', 20, 'Infantil', 'GT'),
(17, 'Laranja Neon', 26, 'Mountain Bike', 'Norco'),
(18, 'Amarela Neon', 24, 'Passeio', 'Diamondback'),
(19, 'Vermelha Neon', 28, 'Speed', 'Colnago'),
(20, 'Azul Celeste', 20, 'Infantil', 'Mongoose');


create table Fornecedor (
	id_fornecedor					INTEGER PRIMARY KEY ,
	nome						varchar(100) 		not null,  
	telefone					int  				not  null,
	email						varchar(100)		not  null,
 	cep						int					not  null
);

INSERT INTO Fornecedor (id_fornecedor, nome, telefone, email, cep) VALUES 
(1, 'Fornecedor A', 123456789, 'fornecedor_a@email.com', 12345678),
(2, 'Fornecedor B', 987654321, 'fornecedor_b@email.com', 87654321),
(3, 'Fornecedor C', 555555555, 'fornecedor_c@email.com', 33333333),
(4, 'Fornecedor D', 777777777, 'fornecedor_d@email.com', 44444444),
(5, 'Fornecedor E', 999999999, 'fornecedor_e@email.com', 55555555),
(6, 'Fornecedor F', 333333333, 'fornecedor_f@email.com', 66666666),
(7, 'Fornecedor G', 444444444, 'fornecedor_g@email.com', 77777777),
(8, 'Fornecedor H', 666666666, 'fornecedor_h@email.com', 88888888),
(9, 'Fornecedor I', 222222222, 'fornecedor_i@email.com', 99999999),
(10, 'Fornecedor J', 888888888, 'fornecedor_j@email.com', 11111111),
(11, 'Fornecedor K', 111111111, 'fornecedor_k@email.com', 22222222),
(12, 'Fornecedor L', 444444444, 'fornecedor_l@email.com', 33333333),
(13, 'Fornecedor M', 555555555, 'fornecedor_m@email.com', 44444444),
(14, 'Fornecedor N', 777777777, 'fornecedor_n@email.com', 55555555),
(15, 'Fornecedor O', 888888888, 'fornecedor_o@email.com', 66666666),
(16, 'Fornecedor P', 999999999, 'fornecedor_p@email.com', 77777777),
(17, 'Fornecedor Q', 222222222, 'fornecedor_q@email.com', 88888888),
(18, 'Fornecedor R', 333333333, 'fornecedor_r@email.com', 99999999),
(19, 'Fornecedor S', 666666666, 'fornecedor_s@email.com', 11111111),
(20, 'Fornecedor T', 555555555, 'fornecedor_t@email.com', 22222222);


create table Servico (
	id_servico					INTEGER PRIMARY KEY ,
	duracao						varchar(100) 		not null,  
	descricao					int  				not  null,
	preco						float						
);


INSERT INTO Servico (id_servico, duracao, descricao, preco) VALUES 
(1, '1 hora', 'Serviço de limpeza', 50.00),
(2, '2 horas', 'Manutenção de jardim', 80.00),
(3, '30 minutos', 'Serviço de encanamento', 70.00),
(4, '1 hora', 'Pintura de parede', 100.00),
(5, '45 minutos', 'Instalação de luminárias', 60.00),
(6, '3 horas', 'Limpeza de piscina', 120.00),
(7, '1 hora', 'Serviço de reparo elétrico', 90.00),
(8, '2 horas', 'Limpeza de tapetes', 70.00),
(9, '1 hora', 'Montagem de móveis', 80.00),
(10, '1 hora', 'Instalação de cortinas', 60.00),
(11, '1 hora', 'Manutenção de ar condicionado', 100.00),
(12, '1 hora', 'Limpeza de calhas', 50.00),
(13, '1 hora', 'Reparo de telhado', 120.00),
(14, '1 hora', 'Serviço de jardinagem', 70.00),
(15, '1 hora', 'Limpeza de fachada', 90.00),
(16, '1 hora', 'Instalação de cercas', 80.00),
(17, '1 hora', 'Serviço de marcenaria', 110.00),
(18, '1 hora', 'Poda de árvores', 75.00),
(19, '1 hora', 'Limpeza de dutos de ar', 85.00),
(20, '1 hora', 'Serviço de impermeabilização', 130.00);



select * from Bicicleta;
UPDATE Bicicleta	SET tamanho = 29	WHERE id_bicicleta = 1;
INSERT INTO Servico (id_servico, duracao, descricao, preco) VALUES 
(21, '22 horas','Serviço de detetizaçaõ', 50.00);
DELETE FROM Servico	WHERE id_servico =21;


SELECT nome_funcionario, cargo	FROM Funcionario	WHERE salario > 4000;

SELECT nome_cliente, numero_telefone	FROM Cliente	WHERE nascimento < '1980-01-01';

SELECT modelo, marca	FROM Bicicleta	WHERE tamanho = 24;

SELECT nome, email	FROM Fornecedor;

SELECT nome_cliente, email	FROM Cliente;

SELECT c.nome_cliente, b.modelo, b.marca	FROM Cliente c
JOIN Bicicleta b ON c.id_cliente = b.id_bicicleta;

SELECT f.nome, f.telefone, f.email	FROM Fornecedor f	
JOIN Bicicleta b ON f.id_fornecedor = b.id_bicicleta
WHERE b.tamanho = 26;

SELECT func.nome_funcionario, func.cargo, func.data_contratacao
FROM Funcionario func
JOIN Cliente cli ON func.id_funcionario = cli.id_cliente
WHERE func.data_contratacao < '2023-01-01' AND cli.nascimento > '1990-01-01';

SELECT c.nome_cliente, s.preco
FROM Cliente c
JOIN Servico s ON c.id_cliente = s.id_servico;


SELECT f.nome, f.telefone, f.email
FROM Fornecedor f
JOIN Bicicleta b ON f.id_fornecedor = b.id_bicicleta
WHERE b.cor IN ('Vermelha', 'Azul');



```
