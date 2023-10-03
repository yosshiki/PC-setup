# create CSR

## set variable
```KEY=XXX.key
CSR=XXX.csr

echo -e KEY=$KEY \\nCSR=$CSR
```

## create key
```
ll
```
```
openssl genrsa -des3 -out $KEY 2048  
```
(passphrase)  
(confirm passphrase)

## create csr

```
ll
```
```
openssl req -new -key $KEY -out $CSR
```
Country Name: JP  
State or Province Name: Tokyo  
Locality Name : XXX-ku  
Organization Name: YYY inc.  
Organizational Unit Name: (Empty) 
Common Name: www.XXX.com  
```
ll
```

## release passphrase
```
oepnssl rsa -in $KEY -out passoff_$KEY
```
```
ll
```
```
mv $KEY passinclude_$KEY
```
```
ll
```
```
mv passoff_$KEY $KEY
```
```
ll
```

## confirmation 
```
cat $KEY
```
```
cat $CSR
```