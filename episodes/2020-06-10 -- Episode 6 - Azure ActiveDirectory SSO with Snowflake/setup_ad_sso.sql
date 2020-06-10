
USE ROLE ACCOUNTADMIN;

// enable sso
ALTER ACCOUNT SET 
  SAML_IDENTITY_PROVIDER = '{
    "certificate": "<Paste the content of downloaded certificate from Azure portal>",
    "ssoUrl":"<Login URL value which you have copied from the Azure portal>",
    "type":"custom",
    "label":"Hashmap Azure ActiveDirectory"
  }';

// enable the sso button on the login page
ALTER ACCOUNT SET SSO_LOGIN_PAGE = TRUE;