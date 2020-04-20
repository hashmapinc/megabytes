// set context
USE ROLE SECURITYADMIN;


// User with username / password
CREATE USER PEGGY_OLSON
  PASSWORD             = 'a fake password that you should replace with something better, preferably randomly generated'
  LOGIN_NAME           = 'peggy.olson@scdp.com'
  DISPLAY_NAME         = 'Peggy Olson'
  FIRST_NAME           = 'Peggy'
  LAST_NAME            = 'Olson'
  EMAIL                = 'peggy.olson@scandp.com'
  MUST_CHANGE_PASSWORD = TRUE 
  DEFAULT_ROLE         = PUBLIC;
  
  
// User with SSO
CREATE USER LANE_PRYCE
  LOGIN_NAME   = 'lane.pryce@scdp.com' // must match the email of your idp
  DISPLAY_NAME = 'Lane Pryce'
  FIRST_NAME   = 'Lane'
  LAST_NAME    = 'Pryce'
  EMAIL        = 'lane.pryce@scdp.com'
  DEFAULT_ROLE = PUBLIC;
  
  
// User with keypair
CREATE USER BERTRAM_COOPER
  LOGIN_NAME   = 'bertram.cooper@scdp.com' 
  DISPLAY_NAME = 'Bert Cooper'
  FIRST_NAME   = 'Bertram'
  LAST_NAME    = 'Cooper'
  EMAIL        = 'bertram.cooper@scdp.com'
  RSA_PUBLIC_KEY = 'your private key here - no newlines please'
  DEFAULT_ROLE = SENIOR_PARTNER;