*** Settings ***
Documentation        Aqui estarão presentes as keywords dos testes Web.
Resource  ../../resources/main.robot

*** Keywords ***
##########################################################################
#                                 Primeiro teste                         #
##########################################################################

Dado que pesquiso por produto comnome "${PRODUTO}" no campo de pesquisa​
    Go To                               ${link.base}
    Title Should Be                     ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible       ${HOME.HEADER_OPTIONS}
    Wait Until Element Is Visible       ${HOME.INPUT_BUSCA}
    Input Text                          ${HOME.INPUT_BUSCA}           ${PRODUTO} 

Quando clico no botão pesquisar
    Click Element                       ${HOME.BTN_PESQUISAR}

Então o produto "${PRODUTO}" devera ser listado no site
    Page Should Contain Image           xpath=${HOME.IMG_BLOUSE}

##########################################################################
#                                 Proximo teste                          #
##########################################################################

Dado que clico em "Sign in"
    Wait Until Element Is Visible       ${home_conta.btn_sign_in}
    Click Element                       ${home_conta.btn_sign_in}

Quando Informar um e-mail válido
    ${pessoa}  Random Pessoa
    Input Text                          ${home_conta.campo_email}    ${pessoa.mail}
    Click Element                       ${home_conta.SubmitCreate} 

    Set Test Variable    ${pessoa}
E Preencher os dados obrigatórios
    Wait Until Element Is Visible       ${home_conta.firstname} 
    Click Element                       id=id_gender2
    Input Text                          ${home_conta.firstname}     ${pessoa.first_name}
    Input Text                          ${home_conta.lastname}      ${pessoa.last_name}
    ${senha}    FakerLibrary.random int  min=1  max=999
    Input Text                          ${home_conta.passwd}               Senha@sa${senha}
    Click Element                       ${home_conta.days} 
    Click Element                       //*[@id="days"]/option[10]    
    Click Element                       ${home_conta.months} 
    Click Element                       //*[@id="months"]/option[8]
    Click Element                       //*[@id="years"]/option[27]
    Input Text                          ${home_conta.company}              Empresa QA       
    Input Text                          ${home_conta.address1}             ${pessoa.rua}
    Input Text                          ${home_conta.city}                 ${pessoa.cidade}
    Click Element                       id=id_state  
    Click Element                       //*[@id="id_state"]/option[4]
    Input Text                          ${home_conta.postcode}             00000
    Input Text                          ${home_conta.address2}             ${pessoa.rua}
    Input Text                          ${home_conta.other}                Automation test software Web/API
    Input Text                          ${home_conta.phone_mobile}         ${pessoa.telefone}
    Input Text                          ${home_conta.phone}                ${pessoa.telefone}

E Submeter cadastro
    Click button                        ${home_conta.btn_submitAccount}
Então a conta devera ser efetuada efetuado com sucesso
    Click Element                       //*[@id="center_column"]/div/div[1]/ul/li[4]/a/span
    Wait Until Element Is Visible       //*[@id="center_column"]/div/form/fieldset/div[11]/button