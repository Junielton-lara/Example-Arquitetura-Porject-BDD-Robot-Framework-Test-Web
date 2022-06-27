*** Settings ***
Documentation        Aqui estarão presentes todas as variáveis/elementos da tela Home do site automationpractice

*** Variables ***
&{HOME}
...    TITLE_PAGE_HOME=My Store  
...    HEADER_OPTIONS=//*[@id="block_top_menu"]/ul
...    INPUT_BUSCA=search_query_top
...    BTN_PESQUISAR=submit_search
...    IMG_BLOUSE=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']




&{home_conta}
...    btn_sign_in=//*[@id="header"]/div[2]/div/div/nav/div[1]/a 
...    campo_email=id=email_create
...    SubmitCreate=id=SubmitCreate
...    firstname=id=customer_firstname
...    lastname=id=customer_lastname
...    passwd=id=passwd
...    days=id=days
...    months=id=months
...    company=id=company 
...    address1=id=address1
...    city=id=city
...    address2=id=address2
...    other=id=other
...    phone_mobile=id=phone_mobile
...    phone=id=phone
...    postcode=id=postcode
...    btn_submitAccount=id=submitAccount
