# goLang Acme Corp
Projeto Conceito para implementar uma aplicação web usando a linguagem goLang. 
Tendo o seguinte contexto:  A pouco tempo a empresa Acme Corporation iniciou suas vendas online e carece de uma 
plataforma robusta para as vendas. Para que as vendas online tenham sucesso a Acme necessita de um novo serviço 
web que disponibilize funcionalidades de controle do estoque.


## Objetivos Principais:
- Criar uma sistema usando linguagem [GoLang](https://golang.org/) (Biblioteca padrão, sem framework);
- Criar um sistema web e Restful API;
- Projetar Sistemas usando Arquiterura Microservices;
- Implantação Contínua (Continuous Deployment); 

### Adquirir Proficiências em Habilidades

1. Experiência em implementar usando a linguagem [GoLang](https://golang.org/);

![GoLang](https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/Go-brown-side.sh.png)

2. Experiência em sistemas de banco de dados NoSQL (Cassandra, [MongoDB](https://www.mongodb.com/), etc.);
    <p><img src="https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/mongoDB.png" alt="Experiência em sistemas de banco de dados NoSQL" height="50" width="195"/></p>
2. Experiência em sistemas de containerização (e.g. [Docker](https://hub.docker.com/r/pss1suporte/paas-docker/));
    <p><img src="https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/docker.png" alt="Experiência em sistemas de containerização Docker" height="50" width="195"></p>
3. Experiência em sistemas Linux e shell scripting;
    <p><img src="https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/shell-linux.png" alt="Experiência em sistemas Linux e shell scripting" height="91" width="150"></p>
4. Experiência em projetos utilizando micro serviços (Microservices) e computação distribuída;

![Microservices](https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/microservices-domain.png)

### Como usar:

Considerando que o seu ambinete SDK já esteja preparado.

1. Clonar: `git https://github.com/pssilva/go-lang-acme-corp.git`;
2. Acessar: `cd go-lang-acme-corp`;
3. Instalar Theme: `cd src/main/staticweb/public/theme/AdminLTE2.3.7` 
   - E executar a instalação: [AdminLTE](https://github.com/pssilva/go-lang-acme-corp/blob/master/src/main/staticweb/public/theme/AdminLTE2.3.7/README.md)
4. Intall Package: `go install -v -gcflags "-N -l" main/staticweb`;
4. Run Server: `go run src/main/staticweb/*.go`;
5. acessar o link: `localhost:8080`;

### Temas 
O projeto será adaptado para os seguintes temas (themes):

1. [AdminLTE](https://github.com/almasaeed2010/AdminLTE); <br />
>AdminLTE: `localhost:8080` ou `http://localhost:8080/admin-lte`
!["AdminLTE Presentation"](https://almsaeedstudio.com/AdminLTE2.png "AdminLTE Presentation")

2. [Gentelella Allela](https://github.com/puikinsh/gentelella); <br />
>Gentelella Allela: [Trabalho em progresso]
![Gentelella Admin Template](https://github.com/pssilva/go-lang-acme-corp/blob/master/doc-repo/theme-gentelella.png)

### Todo List

 1. Gerar Relatórios;
 2. Enviar E-mails;
 3. Autenticação OAuth2;
 4. Implementar RESTful APIs;
 5. Automatizar geração de CRUDs;
 6. Integração com Logstash;
 7. Gerenciar Logstash com Elasticsearch;


---
### Referência

\[Shiju Varghese: 2015\], Apress. [Web Development with Go](http://www.apress.com/us/book/9781484210536): Building Scalable Web Apps and RESTful Services <br />
\[Caleb Doxsey: 2016\], O’Reilly Media, Inc. [Introducing Go](http://shop.oreilly.com/product/0636920046516.do): Build Reliable, Scalable Programs <br />
\[Ivo Balbaert: 2012\], iUniverse, Inc. Bloomington. [The Way to Go](https://www.amazon.com.br/Way-Go-Thorough-Introduction-Programming-ebook/dp/B0083RVAJW): A Thorough Introduction to the Go Programming Language <br />
\[Christian Posta: 2016\], O’Reilly Media, Inc., [Microservices for Java Developers](https://developers.redhat.com/promotions/microservices-for-java-developers/): A Hands-on Introduction to Frameworks and Containers <br />

