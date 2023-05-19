CREATE TABLE [IF NOT EXISTS] usuarios (
        user_id int not null auto_increment,
        user_cpf varchar(14) not null,
        user_nome varchar(80) not null,
        user_data_nascimento date not null,
        user_email varchar(80) not null,
        user_senha varchar(30) not null,
        user_num_tel varchar(15) not null,
        primary key (user_id)
);

CREATE TABLE [IF NOT EXISTS] lojas (
        user_id int not null,
        lj_nome_loja varchar(80) not null,
        lj_desc varchar(80) not null,
        lj_cnpj varchar(14) not null,
        primary key (user_id)
);

CREATE TABLE [IF NOT EXISTS] pedidos (
        pdd_id int not null auto_increment,
        user_id int not null,
        pdd_nota_fiscal varchar(50) not null,
        pdd_qtd int not null,
        pdd_preco decimal(10,2) not null,
        pdd_tamanho varchar(20) not null,
        primary key (pdd_id)
);

CREATE TABLE [IF NOT EXISTS] produtos (
        pdt_id int not null auto_increment,
        pdt_preco decimal (10,2) not null,
        pdt_imagem varchar(80) not null,
        pdt_quantidade int not null,
        pdt_nome varchar(80) not null,
        user_id int not null,
        primary key (pdt_id),
        FOREIGN KEY (user_id) REFERENCES lojas (user_id)
);

CREATE TABLE [IF NOT EXISTS] produtos_pedidos (
        pdd_id int not null,
        pdt_id int not null,
        pp_qtd_total int not null,
        pp_preco_total decimal(10,2) not null,
        primary key (pdd_id, pdt_id),
        FOREIGN KEY (pdd_id) REFERENCES pedidos (pdd_id),
        FOREIGN KEY (pdt_id) REFERENCES produtos (pdt_id)
)

