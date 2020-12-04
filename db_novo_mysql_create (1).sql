CREATE TABLE `produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`preco` double(10,2) NOT NULL,
	`origem` varchar(50) NOT NULL,
	`ativo` BOOLEAN NOT NULL,
	`qnt` int(3) NOT NULL,
	`promo` BOOLEAN NOT NULL,
	`codigo_cat` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(50) NOT NULL,
	`descricao` varchar(80) NOT NULL,
	`setor` varchar(15) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuário` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome completo` varchar(50) NOT NULL,
	`email` varchar(60) NOT NULL,
	`senha` varchar(30) NOT NULL,
	`cpf` varchar(15) NOT NULL,
	`endereço` varchar(60) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk0` FOREIGN KEY (`codigo_cat`) REFERENCES `Categoria`(`id`);

