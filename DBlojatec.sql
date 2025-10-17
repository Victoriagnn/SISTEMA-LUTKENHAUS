use dblojatec;
create table usuarios(
	induser int primary key auto_increment,
	usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique,
	senha varchar(15) not null
);
INSERT INTO usuarios (usuario, fone, login, senha)
VALUES ('João Silva', '11999998888', 'joaos', 'senha123');

CREATE TABLE clientes (
    idcli INT PRIMARY KEY AUTO_INCREMENT,
    nomecli VARCHAR(50) NOT NULL,
    endcli VARCHAR(100),
    fonecli VARCHAR(15) NOT NULL,
    emailcli VARCHAR(50)
);
INSERT INTO clientes (nomecli, endcli, fonecli, emailcli)
VALUES 
('Maria Oliveira', 'Rua das Flores, 123', '11987654321', 'maria@gmail.com');

CREATE TABLE ordem_servico (
    os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10,2),
    idcli INT NOT NULL,
    FOREIGN KEY (idcli) REFERENCES clientes(idcli)
);
INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli)
VALUES ('Notebook Dell Inspiron', 'Não liga', 'Troca da placa-mãe', 'Lucas Técnico', 1200.00, 1);
