#!/bin/bash

algo_url_wiki="https://en.wikipedia.org/wiki/Base64"

echo "Let's make a simple password using base64 algorithm"

echo "Length of the password you want >>> "
read pass_length
echo

echo "How many passwords? Try 5"
read sequence
echo

for i in $(seq 1 $sequence); do
    openssl rand -base64 48 | cut -c1-$pass_length
done
echo 
echo ------------------------------------------------------------------------------------------------
echo "Yes, I know you want to learn more about the freaki'n algo: $algo_url_wiki"
echo ------------------------------------------------------------------------------------------------
