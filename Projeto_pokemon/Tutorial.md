**Obter informações do Dataset no 'Kaggle' e tratar os dados.**

>Link do dataset: https://www.kaggle.com/datasets/abcsds/pokemon/code
>Tratar os dados utilizando o Jupyter e o phyton:

***Tabelas selecionadas:***

* Name;

* Type 1;

* HP;

* Attack;

* Defense;  

* Speed.

**Script para tratar os dados no Jupyter:**

***Exclusão de tabelas e Tratamento dos dados:***

#Importa o pandas:

import pandas as pd

#Importa os dados do kaggle, baixados na máquina e envia para o arquivo do jupyter:

dados = pd.read_csv('Pokemon.csv', index_col=0)

#Para ter acesso aos dados:

dados.info

#Excluir as tabelas que não iremos utilizar:

dados.drop('#', axis = 1, inplace=True)

dados.drop('Type 2', axis = 1, inplace=True)

dados.drop('Total', axis = 1, inplace=True)

dados.drop('Sp. Atk', axis = 1, inplace=True)

dados.drop('Sp. Def', axis = 1, inplace=True)

dados.drop('Generation', axis = 1, inplace=True)

dados.drop('Legendary', axis = 1, inplace=True)

#Para verificar se as alterações foram realizadas:

dados.info

#Para salvar as alterações feitas da exclusão das tabelas:

dados.to_csv('Pokemon_alterados.csv')

***Tratamento dos dados:***

#Biblioteca do pandas:

import pandas as pd

#Importa o arquivo alterado:

dados = pd.read_csv('Pokemon_alterados.csv')

#Apaga a informação que não iremos utilizar:

dados.drop('#', axis = 1, inplace=True)

#Verifica a alteração:

dados.info

#Para verificar se possui algum valor vazio:

dados.isna().any()

#Não possui nenhum, salva as alterações:

dados.to_csv('Pokemon_alterados2.csv')



