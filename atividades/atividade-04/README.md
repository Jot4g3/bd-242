# Atividade 04
## 1) Criar uma tabela TB_CURSO com os seguintes atributos (id, nome);

## 2) Criar na tabela TB_PROFESSOR com os seguintes atributos (id, nome);

## 3) Criar uma Tabela TB_CURSO_PROFESSOR para implementar um relacionamento N:N onde se consegue obter os Professores que ensinam em determinado Curso e os Cursos com os seus Professores. 

## 4) Inserir registros na tabela TB_CURSO (Informática, Telecomunicaõoes, Eletrotécnica, Mecânica, Edificações, Turismo, Química);

## 5) Inserir registros na tabela TB_PROFESSOR (César Olavo, Davis Macedo, Serra Furtado, Maurício Jaborandi, Marcos Lemos, José Roberto, Glória Marinho);

## 6) Associar os Professores com os Cursos inserindo registros na Tabela TB_CURSO_PROFESSOR.
   ###   Montar os inserts de cada Professor com o Curso usando suas chaves primárias. 
   ###   Na tabela TB_CURSO_PROFESSOR haverá os seguintes atributos(id, id_curso, id_professor). 
   ####     Usar os seguintes registros:
   #####       Cesar Olavo, Informática;
   #####       Davis Macedo, Informática;
   #####       Serra Furtado, Informática;
   #####       Mauricio Jaborandi, Informática;
   #####       Marcos Lemos, Mecânica;
   #####       Gloria Marinho, Química;

## 7) Fazer uma consulta (SELECT) envolvendo as Tabelas TB_CURSO, TB_PROFESSOR, TB_CURSO_PROFESSOR onde é mostrado TB_CURSO.NOME, TB_PROFESSOR.NOME com um Select inner join TB_CURSO.ID = TB_CURSO_PROFESSOR.CURSO_ID and TB_PROFESSOR.ID = TB_CURSO_PROFESSOR.PROFESSOR_ID.
