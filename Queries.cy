//MATCH (n) DETACH DELETE n;

// Load CSV file and create nodes
LOAD CSV WITH HEADERS FROM 'https://github.com/vilaralmeida/CloudGPT/blob/main/data/plataforma.csv' AS row
CREATE (n:Produto {nome: row.PRODUTO, plataforma: row.plataforma});

