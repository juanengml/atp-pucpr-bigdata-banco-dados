# atp-pucpr-bigdata-banco-dados

# Diagrama 
![img](https://raw.githubusercontent.com/juanengml/atp-pucpr-bigdata-banco-dados/master/Screenshot_2020-08-27%20A%20Free%20Database%20Designer%20for%20Developers%20and%20Analysts.png)
link - https://dbdiagram.io/d/5f42bb517b2e2f40e9de75be

## create ambiente
Requisitos: Ubuntu 20.04 

## instale docker usando link
link - https://docs.docker.com/engine/install/ubuntu/

## instale portainer.io 
![portainer-io](https://raw.githubusercontent.com/juanengml/atp-pucpr-bigdata-banco-dados/master/Screenshot_2020-08-23%20Portainer%20Management%2C%20Docker%20User%20Interface%2C%20Container%20Software%20-%20Auckland%2C%20Singapore%2C%20San%20Francisco%20%5B...%5D.png)



```shell
$ docker volume create portainer_data

$ docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

```

## EM seguida com seu portainer carregado no navegador e devidamente logado
### Veja o Video Abaixo 

[![](http://img.youtube.com/vi/qKZohx1DoJU/0.jpg)](http://www.youtube.com/watch?v=qKZohx1DoJU "")

### Seleciona o banco clicando em cima

## select * from depentendes;
![sql-image](https://raw.githubusercontent.com/juanengml/atp-pucpr-bigdata-banco-dados/master/Screenshot_2020-08-23%20Portainer.png)

## select * from projeto; select * from departamento;
![projeto-departamento](https://raw.githubusercontent.com/juanengml/atp-pucpr-bigdata-banco-dados/master/Screenshot_2020-08-23%20Portainer(2).png)
## 

## select * from funcionario;
![funcionario](https://raw.githubusercontent.com/juanengml/atp-pucpr-bigdata-banco-dados/master/Screenshot_2020-08-23%20Portainer(1).png)

