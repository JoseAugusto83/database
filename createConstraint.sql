ALTER TABLE lojas ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES usuarios (user_id);

ALTER TABLE pedidos ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES usuarios (user_id);

ALTER TABLE produtos ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES lojas (user_id);

ALTER TABLE produtos_pedidos ADD CONSTRAINT FOREIGN KEY (pdd_id) REFERENCES pedidos (pdd_id);

ALTER TABLE produtos_pedidos ADD CONSTRAINT FOREIGN KEY (pdt_id) REFERENCES produtos (pdt_id);

ALTER TABLE enderecos ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES usuarios (user_id);