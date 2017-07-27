source certgen.cfg
subj="
C=DE
ST=<STATE>
O=<COMPANY_NAME>
localityName=<CITY>
commonName=$1
organizationalUnitName=<DEPARTMENT_NAME>
emailAddress=<ADMIN_EMAIL>
"

#openssl genrsa -out $1.key 
openssl req \
    -new \
    -batch \
    -subj "$(echo -n "$subj" | tr "\n" "/")" \
    -key device.key \
    -out $CERTDIR/$1.csr

openssl x509 -req -in $CERTDIR/$1.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $CERTDIR/$1.crt -days 500 -sha256
#openssl x509 -req -days 3650 -in csr.csr -signkey rootCA.key -out cert.crt
