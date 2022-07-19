USE empresa_internet;

SELECT nome, sobrenome, data_nascimento FROM Clientes WHERE id_cidade = 1;

SELECT 
    clientes.nome AS nome_cliente,
    clientes.sobrenome AS sobrenome_cliente,
    clientes.data_nascimento AS data_nascimento_cliente,
    cidades.nome AS nome_cidade,
    uf AS uf_cidade
FROM
    Clientes AS clientes
        JOIN
    Cidades AS cidades ON clientes.id_cidade = cidades.id;
    

SELECT nome, sobrenome, data_nascimento FROM Clientes ORDER BY data_nascimento ASC;

SELECT id, velocidade_mpbs, preco FROM Planos ORDER BY preco DESC;

SELECT 
    cliente.nome as nome_cliente,
    cliente.sobrenome as sobrenome_cliente,
    cliente.data_nascimento as data_nascimento_cliente,
    plano.velocidade_mpbs AS velocidade_plano,
    plano.preco AS preco_plano,
    cidade.nome as nome_cidade
FROM
    Clientes AS cliente
        JOIN
    Planos AS plano ON cliente.id_plano = plano.id
        AND cliente.id = 1
        JOIN
    Cidades AS cidade ON cidade.id = cliente.id_cidade;
    
SELECT * FROM Clientes LIMIT 5;

SELECT * FROM Clientes WHERE id_cidade = 1 AND id_plano = 3;

SELECT id, sobrenome, id_cidade, id_plano FROM Clientes WHERE nome LIKE "%a%";

SELECT * FROM Cidades WHERE codigo_postal = "88036-400";

SELECT MAX(preco), velocidade_mpbs FROM Planos GROUP BY id;