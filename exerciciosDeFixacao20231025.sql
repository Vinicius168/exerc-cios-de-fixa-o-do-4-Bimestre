--Exercicio  1 

create trigger insert_clientes after insert
on Clientes
for each row

insert into Auditoria (mensagem)
values ('Novo cliente');

-- Exercício 2

CREATE TRIGGER clienteAntesExcluir
BEFORE DELETE ON Clientes FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (mensagem) VALUES ('Tentativa de exclusão de cliente em ' + NOW());
END;

