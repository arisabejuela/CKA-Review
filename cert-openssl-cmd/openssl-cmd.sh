openssl x509 -in file-path.crt -text -noout



cat akshay.csr | base64 -w 0
# create k8s CSR resource
# insert the converted base64 here

kubectl approve akshay
