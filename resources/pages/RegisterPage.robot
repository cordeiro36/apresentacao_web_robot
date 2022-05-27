*Settings*
Documentation    Elementos da página Register

Resource    ${EXECDIR}/resources/base.robot

*Variables*
${TXT_EMAIL}                 css=input[id="email_create"]
${BTN_SUBMIT_CREATE}         css=input[id="SubmitCreate"]
${TXT_CUSTOMER_FIRSTNAME}    css=input[id="customer_firstname"]
${TXT_CUSTOMER_LASTNAME}     css=input[id="customer_lastname"]
${TXT_PASSWORD}              css=input[id="passwd"]
${TXT_FIRSTNAME}             css=input[id="firstname"]
${TXT_LASTNAME}              css=input[id="lastname"]
${TXT_ADDRESS1}              css=input[id="address1"]
${TXT_CITY}                  css=input[id="city"]
${TXT_STATE}                 css=input[id="id_state"]
${TXT_POSTCODE}              css=input[id="postcode"]
${TXT_PHONE}                 css=input[id="phone"]
${BTN_SUBMIT_ACCOUNT}        css=input[id="submitAccount"]


*Keywords*

Dado que desejo realizar um novo cadastro "${email}"

    Wait For Elements State    ${TXT_EMAIL}            visible     10
    Fill Text                  ${TXT_EMAIL}            ${email}
    Click                      ${BTN_SUBMIT_CREATE}


Quando preencho o formulário "${customer_firstname}""${customer_lastname}""${password}""${firstname}""${lastname}""${address}""${state}""${postcode}""${phone}"

    Fill Text            ${TXT_CUSTOMER_FIRSTNAME}    ${customer_firstname}
    Fill Text            ${TXT_CUSTOMER_LASTNAME}     ${customer_lastname}
    Fill Text            ${TXT_PASSWORD}              ${password}
    Fill Text            ${TXT_FIRSTNAME}             ${firstname}
    Fill Text            ${TXT_LASTNAME}              ${lastname}
    Fill Text            ${TXT_ADDRESS1}              ${address}
    Select Options By    ${TXT_STATE}                 ${state}
    Fill Text            ${TXT_POSTCODE}              ${postcode}
    Fill Text            ${TXT_PHONE}                 ${phone}
  

E clico no botão Register

    Click    ${BTN_SUBMIT_ACCOUNT}

