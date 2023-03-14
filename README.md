# sistema_de_reserva_de_salas_de_aula


 SABE  COLOCAR O BANCO DE DADOS  NO PhpMyAdmin? siga os passos
 baixe o wampp ou xampp  irei explixar pelo xammpp mas é basicamente mesma coisa so muda o nome da pasta onde irá por o arquivo <BR> 
 BAIXAR O XAMPP: https://www.apachefriends.org/pt_br/download.html<BR>
 BAIXAR O WAMP: https://www.wampserver.com/en/ <BR>
 Após isso a instalação de ambos basta  ir confirmando tudo sem alterar NADA
 <br>
  
 CHEGOU A HORA DE POR a PASTA DO PROJETO DENTRO DO SERVER
 <br>
 PARA O XAMPP
 antes de tudo  abra o  xampp e ligue  deixe ele assim
 ![image](https://user-images.githubusercontent.com/55327081/205531399-0e6ff02a-0b9c-4b14-8b2d-ea82c3075f3e.png)<br>
   se o apache e o mysql  ficar verde deu tudo certo!!!<br>
<br>
 
 1°Abra a pasta (c:) <br>
 2°Abra a pasta xampp <br>
 3°Abra a pasta htdocs <br>
 4°tire os arquivos do winrar deste projeto dentro da pasta htdocs<br>
 pronto o sistema está  no servidor local
 <br>
 
 PARA O WAMP 
 Antes de tudo  abra o wamp e ligue todos os serviços
 1°Abra a pasta (c:) <br>
 2°Abra a pasta wamp64 <br>
 3°Abra a pasta wwww <br>
 4°tire os arquivos do winrar deste projeto dentro da pasta wwww<br>
 pronto o sistema está  no servidor local
 <br>
 
 
 Vamos colocar o  Banco de dados no PhoMyAdmin
1°deixe o apache e o mysql ligados no server que você escolheu!! meu caso é o xampp <br>
![image](https://user-images.githubusercontent.com/55327081/205532489-2ad5a0d9-2d60-452d-8d9e-dd1530df543f.png)
<br>
2° abre o site http://localhost/phpmyadmin/index.php <br>
![image](https://user-images.githubusercontent.com/55327081/205532427-61a0f249-9edd-43ce-8fcc-496300ff029c.png)
 <br>
 3° crie um novo banco de dados com mesmo nome do banco de dados deste projeto <br>  
 ![image](https://user-images.githubusercontent.com/55327081/205532656-228904fd-72a9-4a97-b955-3163312702bf.png)
 <br>
 4°coloque o nome do banco de dados exatamente com este nome barbershop  e clique em importar 
![image](https://user-images.githubusercontent.com/55327081/205533350-4bfd3e78-6939-4d27-9c7a-afe3a9952b4a.png) 
 <br>
 5° Clicando em importar você vai selecionar o sql
 ![image](https://user-images.githubusercontent.com/55327081/205533484-0ebb966a-eaa1-4f1d-baf7-84ea8b6bc711.png)
  Para fazer isso abra a pasta onde esta o seu projeto seja ele na pasta www ou htdocs abra a pasta banco de dados 
 e selecione o sgreserva.sql
 <br>
 6° Por  fim clique em Importar
 ![image](https://user-images.githubusercontent.com/55327081/205533750-21e53685-be70-449a-b784-714b1280c9c8.png)
 <br>
 VAMOS MUDAR LOGIM E SENHA DO SISTEMA 
 ![image](https://user-images.githubusercontent.com/55327081/205530247-95cda104-576f-4991-aa2f-9c75c87e8724.png)
 ABRA O PhpMyAdmim
 no menu lateral esquerdo tem os bancos de dados escolha O barbershop 
 selecione a tabela administrador , ira abrir a tabela com logim e senha basta escolher o desejado e mudar 
  <br>
 <br>
 <br>
 
 PARA ACESSAR O PROJETO!!!
 abra seu navegador, e lembrese de deixar o wampp ou xamp ligado
 escreve  isso <br>
 http://localhost/reservadesalas/view/login.php
 
 Prontooo o sistema está no seu computador!!!!!!
