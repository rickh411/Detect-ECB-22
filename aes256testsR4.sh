#! /bin/sh



# AES 256 tests of different modes with different keys and IVs where needed, including entropy and file size

echo AES256ECB Tests >> aes256tests.out 2>&1

#--
echo Encrypt Key0 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key0_256" -in 2560.0.in -out aes256ecb.2560.key0.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.key0.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.key0.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.key0.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key1 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key1_256" -in 2560.0.in -out aes256ecb.2560.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.key1.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key2 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key2_256" -in 2560.0.in -out aes256ecb.2560.key2.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.key2.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.key2.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.key2.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1


#--
echo
echo Encrypt Key3 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key3_256" -in 2560.0.in -out aes256ecb.2560.key3.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.key3.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.key3.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.key3.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo
echo Encrypt Key4 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key4_256" -in 2560.0.in -out aes256ecb.2560.key4.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.key4.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.key4.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.key4.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

#--
echo Random 2560 Input Tests - AES 256 ECB >> aes256tests.out 2>1

echo Encrypt Key1 Random 2560 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key1_256" -in 2560.random.in -out aes256ecb.2560.random.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.random.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.random.key1.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.random.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1


#--
echo Random 512 Input Tests - AES 256 ECB >> aes256tests.out 2>1

echo Encrypt Key1 Random 2560.512 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key1_256" -in 2560.512.in -out aes256ecb.2560.512.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.512.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.512.key1.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.512.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Random 256 Input Tests - AES 256 ECB >> aes256tests.out 2>1

echo Encrypt Key1 Random 2560.256 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key1_256" -in 2560.256.in -out aes256ecb.2560.256.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.256.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.256.key1.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.256.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--

echo Random 128 Input Tests - AES 256 ECB >> aes256tests.out

echo Encrypt Key1 Random 2560.128 >> aes256tests.out 2>&1
openssl enc -aes-256-ecb  -K "$key1_256" -in 2560.128.in -out aes256ecb.2560.128.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ecb.2560.128.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ecb.2560.128.key1.out >> aes256tests.out 2>&1 
ls -l aes256ecb.2560.128.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--

# AES 256 CBC  

echo AES256CBC Tests >> aes256tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> aes256tests.out 2>&1
openssl enc -aes-256-cbc  -K "$key0_256" -in 2560.0.in -iv "$iv0_128" -out aes256cbc.2560.key0.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256cbc.2560.key0.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256cbc.2560.key0.out >> aes256tests.out 2>&1 
ls -l aes256cbc.2560.key0.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key1 >> aes256tests.out 2>&1
openssl enc -aes-256-cbc  -K "$key1_256" -in 2560.0.in -iv "$iv1_128" -out aes256cbc.2560.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256cbc.2560.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256cbc.2560.key1.out >> aes256tests.out 2>&1 
ls -l aes256cbc.2560.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key2 >> aes256tests.out 2>&1
openssl enc -aes-256-cbc  -K "$key2_256" -in 2560.0.in -iv "$iv2_128" -out aes256cbc.2560.key2.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256cbc.2560.key2.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256cbc.2560.key2.out >> aes256tests.out 2>&1 
ls -l aes256cbc.2560.key2.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1


#--
echo
echo Encrypt Key3 >> aes256tests.out 2>&1
openssl enc -aes-256-cbc  -K "$key3_256" -in 2560.0.in -iv "$iv3_128" -out aes256cbc.2560.key3.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256cbc.2560.key3.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256cbc.2560.key3.out >> aes256tests.out 2>&1 
ls -l aes256cbc.2560.key3.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo
echo Encrypt Key4 >> aes256tests.out 2>&1
openssl enc -aes-256-cbc  -K "$key4_256" -in 2560.0.in -iv "$iv4_128" -out aes256cbc.2560.key4.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256cbc.2560.key4.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256cbc.2560.key4.out >> aes256tests.out 2>&1 
ls -l aes256cbc.2560.key4.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

# AES 256 OFB

echo AES256OFB Tests >> aes256tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> aes256tests.out 2>&1
openssl enc -aes-256-ofb  -K "$key0_256" -in 2560.0.in -iv "$iv0_128" -out aes256ofb.2560.key0.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ofb.2560.key0.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ofb.2560.key0.out >> aes256tests.out 2>&1 
ls -l aes256ofb.2560.key0.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key1 >> aes256tests.out 2>&1
openssl enc -aes-256-ofb  -K "$key1_256" -in 2560.0.in -iv "$iv1_128" -out aes256ofb.2560.key1.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ofb.2560.key1.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ofb.2560.key1.out >> aes256tests.out 2>&1 
ls -l aes256ofb.2560.key1.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo Encrypt Key2 >> aes256tests.out 2>&1
openssl enc -aes-256-ofb  -K "$key2_256" -in 2560.0.in -iv "$iv2_128" -out aes256ofb.2560.key2.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ofb.2560.key2.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ofb.2560.key2.out >> aes256tests.out 2>&1 
ls -l aes256ofb.2560.key2.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1


#--
echo
echo Encrypt Key3 >> aes256tests.out 2>&1
openssl enc -aes-256-ofb  -K "$key3_256" -in 2560.0.in -iv "$iv3_128" -out aes256ofb.2560.key3.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ofb.2560.key3.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ofb.2560.key3.out >> aes256tests.out 2>&1 
ls -l aes256ofb.2560.key3.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1

#--
echo
echo Encrypt Key4 >> aes256tests.out 2>&1
openssl enc -aes-256-ofb  -K "$key4_256" -in 2560.0.in -iv "$iv4_128" -out aes256ofb.2560.key4.out >> aes256tests.out 2>&1

echo Entropy >> aes256tests.out 2>&1
ent aes256ofb.2560.key4.out >> aes256tests.out 2>&1

echo GZIP >> aes256tests.out 2>&1
gzip -k -f aes256ofb.2560.key4.out >> aes256tests.out 2>&1 
ls -l aes256ofb.2560.key4.out* >> aes256tests.out 2>&1
echo >> aes256tests.out 2>&1


# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

