# Dito Challenge

## O que é?

Este é um projeto feito como resposta para o desafio Dito

## Objetivo

> A aplicação deve conter um serviço que observa um diretório e sempre que um novo arquivo .csv chegar,o mesmo deve ser processado. O processamento do arquivo é a leitura do mesmo e a gravação de cada linha na tabela de pontuação.

## A aplicação

A aplicação foi construída com **Ruby 2.5.1** e **Rails 5.2.2**, utilizando **PostgreSQL** como banco de dados. As dependências Ruby utilizadas para o projeto foram:

- [Filewatcher](https://github.com/filewatcher/filewatcher)
- [Bootstrap SASS](https://github.com/twbs/bootstrap-sass)

## Como executar a aplicação

1. ```$ docker-compose up -d```
2. ```$ docker-compose exec web rails db:create```
3. ```$ docker-compose exec web rails db:migrate```

## O que poderia ter melhorado

Alguns pontos que achei que poderia ter melhor alcançado o objetivo.

1. Front-End separado para mostrar os pontos e ser consumido por uma API;

2. Back-End feito em Rails API. Melhor para ter usado Domain-Driven Development e usar como microserviços;

3. Deixar a aplicação rodando em um servidor Web como o NginX para melhor balanceamento de carga da aplicação.

4. Criar scripts para deploy da aplicação com Kubernetes

5. Testes unitários