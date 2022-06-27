# Example-Arquitetura-Porject-BDD-Robot-Framework-Test-Web
Example Arquitetura Porject BDD Robot Framework Test Web


# Como Executar o Projeto.
```
-- EXECUÇÂO POR ARQUIVO DE TESTE (SUITE)
  Exemplo > robot -d results -x outputxunit.xml -v AMBIENTE:app ./cases//webautomation.robot


-- EXECUÇÂO DE TODOS OS TESTES
  Exemplo > robot -d results -x outputxunit.xml -v AMBIENTE:app ./cases/

```
### <span style="color: red">Atenção</span>
Para poder executar o projeto com sucesso nescessita ter todas as suas dependencias ja instaladas
# Execeute o comando na pasta: pip install -r requirements.txt
```
robotframework
robotframework-faker
robotframework-requests
robotframework-seleniumlibrary
robotframework-pabot
robotframework-pdf2textlibrary
robotframework-debuglibrary
Faker
requests
xmltodict
urllib3
pandas
xlrd
pyyaml
```
# Comando Base
```
    Exemplo > robot -d results -x outputxunit.xml -v AMBIENTE:app ./cases/
```

# Para executar um case especifico
```
-- EXECUÇÂO POR ARQUIVO DE TESTE (SUITE)
  Exemplo > robot -d results -x outputxunit.xml -t tag_teste -v AMBIENTE:app ./cases/Login.robot 
```
# Para adicionar um novo ambiente de execução
    1- Devera ser criado um novo arquivo .bat com os usuarios de captação necessarios na pasta /resources/user/ novo.bat
    2- Criar novo environments com as variáveis e link do novo ambiente na pasta /resources/environments/ env.novo.yaml
    3- Para exeutar o novo ambiente:
        pabot --pabotlib --resourcefile resources/users/novo.dat --processes  6 -d results -v AMBIENTE:novo -v pabot:True .
# Lista de todas as TAGS
|TAG|Variante|
|---|:---:|
