--
-- Fernando Boaglio
--
-- Spring Boot Properties
--
-- https://github.com/boaglio/spring-boot-properties
--
-- https://www.casadocodigo.com.br/products/livro-spring-boot
--
--

DROP TABLE propriedade IF EXISTS;

CREATE TABLE propriedade (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(200),
    nome VARCHAR(200),
    valor VARCHAR(512) default '',
    descricao VARCHAR(1000)
 );

ALTER TABLE propriedade ADD CONSTRAINT pk_propriedade PRIMARY KEY (id);

CREATE UNIQUE INDEX nome_unique ON propriedade (nome ASC);
