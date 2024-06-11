![image](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/8f66d165-8f86-4d1c-a2d0-b59baf6a6a72)# -Modelagem-de-Banco-de-Dados-Completa
 Modelagem de Banco de Dados Completa

# -Cenário:

UMA BICICLETARIA CONTRATOU UM SISTEMA PARA GERENCIAR MELHOR SUA GESTÃO, PARA ISSO FOI SOLICITADO QUE O SISTEMA PUDESSE REGISTAR OS SEGUINTES DADOS:

O FUNCIONARIO DEVE SER REGISTRADO COM: ID_FUNCIONARIO, NOME, CARGO, SALÁRIO E DATA DE CONTRATAÇÃO.

O FUNCIONARIO PODE ADICIONAR N CLIENTES NO SISTEMA, E UM CLIENTES PODE SER ADICIONADO POR N FUNCIONARIOS.

O CLIENTE DEVE SER REGISTRADO COM: UM OU MAIS NUMEROS DE TELEFONE, NASCIMENTO, UM OU MAIS EMAIL, NOME, ID_CLIENTE.

UM CLIENTE PODE FAZER N SERVIÇOS E/OU COMPRAR N BICICLETA.

O SERVIÇO DEVE SER REGISTRADO COM: PREÇO, DESCRIÇÃO, ID_SERVIÇO, DURAÇÃO.

A BICICLETA DEVE SER REGISTRADA COM:  MARCA, MODELO, TAMANHO, COR, ID_BICICLETA.

UMA BICICLETA É FATURADA POR UM FORNECEDOR.

CADA FORNECEDOR DEVE SER REGISTRADO COM: CEP, EMAIL, TELEFONE, NOME, ID_FORNECEDOR.

# Modelagem Conceitual:


![Trabalho 3 - Modelo Conceitual (3)](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/f9f65bd2-173c-4b2c-a10a-f992907179b7)



# Modelagem Lógica:

![Trabalho 3 - Modelo Conceitual (2)](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/1eca4a55-1961-43b7-a4af-6315f5d5a755)


# Modelagem Física + Inserção de Dados: 

```sql
create table Funcionario (
	id_funcionario					INTEGER PRIMARY KEY 		,
	nome_funcionario				varchar(50) 		not null,  
	cargo						varchar(50)  		not  null,
	salario						float				 ,
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
	id_cliente					INTEGER PRIMARY KEY 		,
	nome_cliente					varchar(100) 		not null,  
	email						varchar(100)  		not  null,
	nascimento					date			not  null,
 	numero_telefone					float			not  null
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
	id_bicicleta					INTEGER PRIMARY KEY ,
	cor						varchar(100) 		not null,  
	tamanho						int  			not  null,
	modelo						varchar(100)		not  null,
 	marca						varchar(100)		not  null
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
	telefone					int  			not  null,
	email						varchar(100)		not  null,
 	cep						int			not  null
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
	id_servico					INTEGER PRIMARY KEY 		,
	duracao						varchar(100) 		not null,  
	descricao					int  			not  null,
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


```
# Crud:

Abaixo vamos usar o "Select" pra selecionar a tabéla "Bicicleta"

```sql

select * from Bicicleta;

```

![Captura de tela 2024-06-10 201420](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/5350e9f7-f11c-4b9d-b2a5-a791e3be92fd)



Abaixo vamos usar o "Update" pra atualizar um dado na tabéla "Bicicleta"

```sql

UPDATE Bicicleta	SET tamanho = 29	WHERE id_bicicleta = 1;

```

![Captura de tela 2024-06-10 202249](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/8c8744c1-47ed-4498-9bff-185a7d2933b4)


Abaixo vamos usar o "Insert" pra inserir um dado na tabéla "Servico"

```sql

INSERT INTO Servico (id_servico, duracao, descricao, preco) VALUES 
(21, '22 horas','Serviço de detetizaçaõ', 50.00);

```

![Captura de tela 2024-06-10 202717](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/e1766020-cfd5-40c4-8892-01367eba9cdc)


Abaixo vamos usar o "Delete" pra deletar um dado na tabéla "Servico"

```sql

DELETE FROM Servico	WHERE id_servico =21;

```

![Captura de tela 2024-06-10 202945](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/0bc04e0c-956a-4dd2-8694-8f092cb7432c)


# Relatórios:

1 - Listar o nome e o cargo de cada funcionário que possui um salário maior que 4000:

```sql
SELECT nome_funcionario, cargo	FROM Funcionario	WHERE salario > 4000;
```

![Captura de tela 2024-06-10 205133](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/645a8419-763a-4afc-978a-e23ff2abdb73)


2 - Listar o nome e o telefone de cada cliente que nasceu antes de 1980:

```sql
SELECT nome_cliente, numero_telefone	FROM Cliente	WHERE nascimento < '1980-01-01';
```


![Captura de tela 2024-06-10 205444](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/e89548d9-d878-4c84-8488-503ee53b35f4)


3 - Listar o modelo e a marca de cada bicicleta com tamanho igual a 24 polegadas:

```sql
SELECT modelo, marca	FROM Bicicleta	WHERE tamanho = 24;
```


![Captura de tela 2024-06-10 205639](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/dd99de51-48b8-41cc-a64f-895924050688)


4 - Listar todos os fornecedores com seus nomes e e-mails:

```sql
SELECT nome, email	FROM Fornecedor;
```

![Captura de tela 2024-06-10 205858](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/271da210-b29e-4b19-89be-44788f8bc14a)


5 - Listar o nome e o email de todos os clientes:

```sql
SELECT nome_cliente, email	FROM Cliente;
```

![Captura de tela 2024-06-10 210059](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/d2d33b78-8831-4575-93d4-39bdc3c1195d)


6 - Listar o nome do cliente, modelo e marca da bicicleta que ele possui:
```sql
SELECT c.nome_cliente, b.modelo, b.marca	FROM Cliente c
JOIN Bicicleta b ON c.id_cliente = b.id_bicicleta;
```
![Captura de tela 2024-06-10 210402](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/743da9e2-790f-4864-ad24-ce3757e99931)


7 - Listar o nome do fornecedor, telefone e email dos fornecedores que forneceram bicicletas de tamanho 26 polegadas:

```sql
SELECT f.nome, f.telefone, f.email	FROM Fornecedor f	
JOIN Bicicleta b ON f.id_fornecedor = b.id_bicicleta
WHERE b.tamanho = 26;
```


![Captura de tela 2024-06-10 210635](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/901b79cf-3f13-4783-9a16-3f661a3ef3ae)

8 - Listar o nome do funcionário, cargo e data de contratação dos funcionários que foram contratados antes de 2023 e que atendem os clientes nascidos após 1990:

```sql
SELECT func.nome_funcionario, func.cargo, func.data_contratacao
FROM Funcionario func
JOIN Cliente cli ON func.id_funcionario = cli.id_cliente
WHERE func.data_contratacao < '2023-01-01' AND cli.nascimento > '1990-01-01';
```

![Captura de tela 2024-06-10 211600](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/a95fb251-8b46-4fe0-a4d9-a7c48f8b0031)


9 - Listar o nome do cliente e o preço do serviço contratado por ele:

```sql
SELECT c.nome_cliente, s.preco
FROM Cliente c
JOIN Servico s ON c.id_cliente = s.id_servico;

```
![Captura de tela 2024-06-10 210941](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/ec68d7af-1caa-41da-aedf-a5d597c5f104)


10 - Listar o nome do fornecedor, telefone e email dos fornecedores que forneceram bicicletas de cor vermelha e azul:
```sql
SELECT f.nome, f.telefone, f.email
FROM Fornecedor f
JOIN Bicicleta b ON f.id_fornecedor = b.id_bicicleta
WHERE b.cor IN ('Vermelha', 'Azul');
```

![Captura de tela 2024-06-10 211117](https://github.com/EduardoBatistaMatos/-Modelagem-de-Banco-de-Dados-Completa/assets/162808278/a75653df-c06a-4cbb-ab95-5621deca8c5e)
