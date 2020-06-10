// Setting up SSO requires ACCOUNTADMIN access.
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


// Note: if you need to undo this, run the SQL below to remove everything from your Snowflake instance
USE ROLE ACCOUNTADMIN;
ALTER ACCOUNT UNSET SAML_IDENTITY_PROVIDER;
ALTER ACCOUNT SET SSO_LOGIN_PAGE = FALSE;