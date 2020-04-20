#!/bin/bash

# generate private key
openssl genrsa 2048 | openssl pkcs8 -topk8 -inform PEM -out snowflake_bertram_cooper

# generate public key
openssl rsa -in snowflake_bertram_cooper -pubout -out snowflake_bertram_cooper.pub