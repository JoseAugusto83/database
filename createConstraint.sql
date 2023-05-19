FOREIGN KEY (user_id) REFERENCES lojas (user_id);

FOREIGN KEY (pdd_id) REFERENCES pedidos (pdd_id);

FOREIGN KEY (pdt_id) REFERENCES produtos (pdt_id);

FOREIGN KEY (user_id) REFERENCES usuarios (user_id);