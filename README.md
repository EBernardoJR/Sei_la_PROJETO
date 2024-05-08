# Seila_Projeto
É um projeto desenvolvido para selecionar um dataset no Kaggle, realizar a seleção de tabelas que iremos utilizar para criar uma base de banco de dados e um modelo lógico.
***
Observação: Sei lá é apenas o nome do grupo.
>Link do dataset: https://www.kaggle.com/datasets/abcsds/pokemon/code
***
MongoDB - Breve resumo da tecnologia que iremos utlizar:

  O Mongo é um banco de dados NOSQL que é baseado em documentos, ele utiliza coleções para agrupar documentos relacionados. Ele utiliza consultas em formato JSON, tornando a manipulação de dados mais conhecida para os desenvolvedores.

***Tabelas selecionadas:***

* Name;

* Type 1;

* HP;

* Attack;

* Defense;  

* Speed.

***

***Modelo lógico***

O modelo lógico pode ser encontrado na pasta: Projeto_pokemon -> Modelos -> Modelos_para_se_basear
 
***

***Dicionário de dados:***

O Dataset do pokémon é bem simples em relação ao seus dados, de acordo com as tabelas acima, temos as seguintes relações:

Name: É o nome do pokémon, que será único e usado para ser a chave primária.

Type 1: Determina o tipo do pokémon, podendo ser: 

Bug, dark, dragon, electric, fairy, fighting, fire, flying, ghost, grass, ground, ice, normal, poison, psychic, rock, steel, water.

Observação: Name,HP, Attack, Defense, Speed foram inseridos em uma tabela única, com o nome Pokemón.

Os dados foram modificados atráves do Jupyter notebook, com a biblioteca do pandas, para utilizar o python. Também possui arquivos de ingestão para inserir os dados no Mysql.

Para encontrar as tabelas já formadas do Mysql, basta ir na pasta: Projeto_pokemon -> Modelos -> Modelo_bd

***



