# Youse Mobile Pipelines

Este projeto é um esqueleto para estudo de Integração Contínua.
É composto basicamente por um arquivo de configuração do
Docker Compose que inicializa um Jenkins e um Gitlab.
Além destes, há alguns scripts para configurar o serviço de
slave do Jenkins e também uma configuração de DNS local
com o `/etc/hosts`.

## Dependências

Além dos programas listados abaixo, é necessário ter conexão
com a Internet. As versões são importantes, porque alguns
recursos do docker e do compose não estão disponíveis em
releases antigos.

-   git
-   docker > 1.10
-   docker-compose > 1.6
-   java

## Passos para execução

1.  Clone o projeto.
2.  Entre na pasta clonada.
3.  Inicie os serviços com o docker-compose.
4.  Inicie o serviço de slave.
5.  Execute o script de verificação dos hosts.

Comandos:

```{sh}
git clone https://github.com/wesleyit/pipe_sample.git
cd pipe_sample
docker-compose up -d
./start_jenkins_slave.sh
./check_hosts.sh
```

## Como testar

Se tudo deu certo, você pode abrir seu navegador e acessar
o Jenkins em http://jenkins.local:8080 e o Gitlab em
http://gitlab.local.

Será necessário colocar a senha de admin do Jenkins. Para obtê-la, execute:

```{sh}
docker-compose logs jenkins.local | less
```

Basta encontrar a senha no console e colar no navegador.
Em seguida será oferecida a tela de criação de usuário.
