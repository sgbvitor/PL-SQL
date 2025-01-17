CREATE TABLE PRODUTO_EXERCICIO
(
COD VARCHAR2(5)
,DESCRICAO VARCHAR2(100)
,CATEGORIA VARCHAR2(100)
);

CREATE TABLE PRODUTO_VENDA_EXERCICIO
(
ID NUMBER(5)
,COD_PRODUTO VARCHAR2(5)
,DATA DATE
,QUANTIDADE FLOAT
,PRECO FLOAT
,VALOR_TOTAL FLOAT
,PERCENTUAL_IMPOSTO FLOAT
);

ALTER TABLE PRODUTO_EXERCICIO ADD CONSTRAINT PRODUTO_EXERCICIO_COD_PK PRIMARY KEY (COD);

ALTER TABLE PRODUTO_VENDA_EXERCICIO ADD CONSTRAINT PRODUTO_VENDA_EXERCICIO_ID_PK PRIMARY KEY (ID);

ALTER TABLE PRODUTO_VENDA_EXERCICIO ADD CONSTRAINT PRODUTO_VENDA_EXERCICIO_PRODUTO_EXERCICIO_COD FOREIGN KEY (COD_PRODUTO) REFERENCES PRODUTO_EXERCICIO (COD);

CREATE TABLE SEGMERCADO
(
ID NUMBER(5)
,DESCRICAO VARCHAR2(100)
);

CREATE TABLE CLIENTE
(
ID NUMBER(5)
,RAZAO_SOCIAL VARCHAR2(100)
,CNPJ VARCHAR2(20)
,SEGMERCADO_ID NUMBER(5)
,DATA_INCLUSAO DATE
,FATURAMENTO_PREVISTO NUMBER(10,2)
,CATEGORIA VARCHAR2(20)
);

ALTER TABLE SEGMERCADO ADD CONSTRAINT SEGMERCACO_ID_PK
PRIMARY KEY (ID);

ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_ID_PK
PRIMARY KEY (ID);

ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_SEGMERCADO_ID
FOREIGN KEY (SEGMERCADO_ID) REFERENCES SEGMERCADO (ID);

