#! /bin/sh

# DES 64 ECB  

echo DES64ECB Tests >> des64tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key0_64" -in 2560.0.in  -out des64ecb.2560.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.key0.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1



#--
echo Encrypt Key1 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key1_64" -in 2560.0.in - -out des64ecb.2560.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.key1.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key2 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key2_64" -in 2560.0.in  -out des64ecb.2560.key2.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.key2.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.key2.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.key2.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


#--
echo
echo Encrypt Key3 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key3_64" -in 2560.0.in  -out des64ecb.2560.key3.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.key3.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.key3.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.key3.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo
echo Encrypt Key4 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key4_64" -in 2560.0.in  -out des64ecb.2560.key4.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.key4.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.key4.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.key4.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


# ////////////////////////////////////////
#--
echo Encrypt Key0 Random >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key0_64" -in 2560.random.in  -out des64ecb.2560.random.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random.key0.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key0 Random512 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key0_64" -in 2560.512.in  -out des64ecb.2560.random512.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random512.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random512.key0.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random512.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key0 Random256 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key0_64" -in 2560.256.in  -out des64ecb.2560.random256.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random256.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random256.key0.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random256.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
#--
echo Encrypt Key0 Random128 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key0_64" -in 2560.128.in  -out des64ecb.2560.random128.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random128.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random128.key0.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random128.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


# ////////////////////////////////////////
#--
echo DES-ECB Encrypt Key1 Random >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key1_64" -in 2560.random.in  -out des64ecb.2560.random.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random.key1.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


# ////////////////////////////////////////

# ////////////////////////////////////////
#--
echo DES-ECB Encrypt Key1 Random512 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key1_64" -in 2560.512.in  -out des64ecb.2560.random512.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random512.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random512.key1.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random512.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

# ////////////////////////////////////////

# ////////////////////////////////////////
#--
echo DES-ECB Encrypt Key1 Random256 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key1_64" -in 2560.256.in  -out des64ecb.2560.random256.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random256.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random256.key1.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random256.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


# ////////////////////////////////////////

#--
echo DES-ECB Encrypt Key1 Random128 >> des64tests.out 2>&1
openssl enc -des-ecb  -K "$key1_64" -in 2560.128.in  -out des64ecb.2560.random128.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ecb.2560.random128.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ecb.2560.random128.key1.out >> des64tests.out 2>&1 
ls -l des64ecb.2560.random128.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1





# ////////////////////////////////////////
# ////////////////////////////////////////

# DES 64 CBC  

echo DES64CBC Tests >> des64tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> des64tests.out 2>&1
openssl enc -des-cbc  -K "$key0_64" -in 2560.0.in -iv "$iv0_64" -out des64cbc.2560.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64cbc.2560.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64cbc.2560.key0.out >> des64tests.out 2>&1 
ls -l des64cbc.2560.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key1 >> des64tests.out 2>&1
openssl enc -des-cbc  -K "$key1_64" -in 2560.0.in -iv "$iv1_64" -out des64cbc.2560.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64cbc.2560.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64cbc.2560.key1.out >> des64tests.out 2>&1 
ls -l des64cbc.2560.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key2 >> des64tests.out 2>&1
openssl enc -des-cbc  -K "$key2_64" -in 2560.0.in -iv "$iv2_64" -out des64cbc.2560.key2.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64cbc.2560.key2.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64cbc.2560.key2.out >> des64tests.out 2>&1 
ls -l des64cbc.2560.key2.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


#--
echo
echo Encrypt Key3 >> des64tests.out 2>&1
openssl enc -des-cbc  -K "$key3_64" -in 2560.0.in -iv "$iv3_64" -out des64cbc.2560.key3.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64cbc.2560.key3.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64cbc.2560.key3.out >> des64tests.out 2>&1 
ls -l des64cbc.2560.key3.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo
echo Encrypt Key4 >> des64tests.out 2>&1
openssl enc -des-cbc  -K "$key4_64" -in 2560.0.in -iv "$iv4_64" -out des64cbc.2560.key4.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64cbc.2560.key4.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64cbc.2560.key4.out >> des64tests.out 2>&1 
ls -l des64cbc.2560.key4.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


#--
#echo Encrypt Key0 IV0 Random >> des64tests.out 2>&1

#openssl enc -des-cbc  -K "$key0_64" -in 2560.random.in -iv "$iv0_64" -out des64cbc.2560.random.key0.out >> des64tests.out 2>&1

#echo Entropy >> des64tests.out 2>&1
#ent des64cbc.2560.key0.out >> des64tests.out 2>&1

#echo GZIP >> des64tests.out 2>&1
#gzip -k -f des64cbc.2560.key0.out >> des64tests.out 2>&1 
#ls -l des64cbc.2560.key0.out* >> des64tests.out 2>&1
#echo >> des64tests.out 2>&1


# REMARK - in AM, start here, add Random tests from CBC - be consistent!

# DES 64 OFB  

echo DES64OFB Tests >> des64tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> des64tests.out 2>&1
openssl enc -des-ofb  -K "$key0_64" -in 2560.0.in -iv "$iv0_64" -out des64ofb.2560.key0.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ofb.2560.key0.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ofb.2560.key0.out >> des64tests.out 2>&1 
ls -l des64ofb.2560.key0.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key1 >> des64tests.out 2>&1
openssl enc -des-ofb  -K "$key1_64" -in 2560.0.in -iv "$iv1_64" -out des64ofb.2560.key1.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ofb.2560.key1.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ofb.2560.key1.out >> des64tests.out 2>&1 
ls -l des64ofb.2560.key1.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo Encrypt Key2 >> des64tests.out 2>&1
openssl enc -des-ofb  -K "$key2_64" -in 2560.0.in -iv "$iv2_64" -out des64ofb.2560.key2.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ofb.2560.key2.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ofb.2560.key2.out >> des64tests.out 2>&1 
ls -l des64ofb.2560.key2.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1


#--
echo
echo Encrypt Key3 >> des64tests.out 2>&1
openssl enc -des-ofb  -K "$key3_64" -in 2560.0.in -iv "$iv3_64" -out des64ofb.2560.key3.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ofb.2560.key3.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ofb.2560.key3.out >> des64tests.out 2>&1 
ls -l des64ofb.2560.key3.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

#--
echo
echo Encrypt Key4 >> des64tests.out 2>&1
openssl enc -des-ofb  -K "$key4_64" -in 2560.0.in -iv "$iv4_64" -out des64ofb.2560.key4.out >> des64tests.out 2>&1

echo Entropy >> des64tests.out 2>&1
ent des64ofb.2560.key4.out >> des64tests.out 2>&1

echo GZIP >> des64tests.out 2>&1
gzip -k -f des64ofb.2560.key4.out >> des64tests.out 2>&1 
ls -l des64ofb.2560.key4.out* >> des64tests.out 2>&1
echo >> des64tests.out 2>&1

# /////////////////////////////////////////////
# /////////////////////////////////////////////

