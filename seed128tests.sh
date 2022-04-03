#! /bin/sh



# SEED 128 tests of different modes with different keys and IVs where needed, including entropy and file size

echo SEED128ECB Tests >> seed128tests.out 2>&1

#--
echo Encrypt Key0 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key0_128" -in 2560.0.in -out seed128ecb.2560.key0.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.key0.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.key0.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.key0.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key1 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key1_128" -in 2560.0.in -out seed128ecb.2560.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.key1.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key2 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key2_128" -in 2560.0.in -out seed128ecb.2560.key2.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.key2.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.key2.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.key2.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1


#--
echo
echo Encrypt Key3 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key3_128" -in 2560.0.in -out seed128ecb.2560.key3.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.key3.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.key3.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.key3.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo
echo Encrypt Key4 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key4_128" -in 2560.0.in -out seed128ecb.2560.key4.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.key4.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.key4.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.key4.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

#--
echo Random 2560 Input Tests - SEED 128 ECB >> seed128tests.out

echo Encrypt Key1 Random 2560 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key1_128" -in 2560.random.in -out seed128ecb.2560.random.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.random.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.random.key1.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.random.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1


#--
echo Random 512 Input Tests - SEED 128 ECB >> seed128tests.out

echo Encrypt Key1 Random 2560.512 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key1_128" -in 2560.512.in -out seed128ecb.2560.512.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.512.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.512.key1.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.512.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Random 256 Input Tests - SEED 128 ECB >> seed128tests.out

echo Encrypt Key1 Random 2560.256 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key1_128" -in 2560.256.in -out seed128ecb.2560.256.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.256.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.256.key1.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.256.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--

echo Random SEED 128 Input Tests - SEED 128 ECB >> seed128tests.out
echo Encrypt Key1 Random 2560.128 >> seed128tests.out 2>&1
openssl enc -seed-ecb  -K "$key1_128" -in 2560.128.in -out seed128ecb.2560.128.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ecb.2560.128.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ecb.2560.128.key1.out >> seed128tests.out 2>&1 
ls -l seed128ecb.2560.128.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--

# SEED 128 CBC  

echo SEED128CBC Tests >> seed128tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> seed128tests.out 2>&1
openssl enc -seed-cbc  -K "$key0_128" -in 2560.0.in -iv "$iv0_128" -out seed128cbc.2560.key0.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128cbc.2560.key0.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128cbc.2560.key0.out >> seed128tests.out 2>&1 
ls -l seed128cbc.2560.key0.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key1 >> seed128tests.out 2>&1
openssl enc -seed-cbc  -K "$key1_128" -in 2560.0.in -iv "$iv1_128" -out seed128cbc.2560.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128cbc.2560.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128cbc.2560.key1.out >> seed128tests.out 2>&1 
ls -l seed128cbc.2560.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key2 >> seed128tests.out 2>&1
openssl enc -seed-cbc  -K "$key2_128" -in 2560.0.in -iv "$iv2_128" -out seed128cbc.2560.key2.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128cbc.2560.key2.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128cbc.2560.key2.out >> seed128tests.out 2>&1 
ls -l seed128cbc.2560.key2.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1


#--
echo
echo Encrypt Key3 >> seed128tests.out 2>&1
openssl enc -seed-cbc  -K "$key3_128" -in 2560.0.in -iv "$iv3_128" -out seed128cbc.2560.key3.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128cbc.2560.key3.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128cbc.2560.key3.out >> seed128tests.out 2>&1 
ls -l seed128cbc.2560.key3.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo
echo Encrypt Key4 >> seed128tests.out 2>&1
openssl enc -seed-cbc  -K "$key4_128" -in 2560.0.in -iv "$iv4_128" -out seed128cbc.2560.key4.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128cbc.2560.key4.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128cbc.2560.key4.out >> seed128tests.out 2>&1 
ls -l seed128cbc.2560.key4.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

# SEED 128 OFB

echo SEED128OFB Tests >> seed128tests.out 2>&1
# ////////////////////////////////////////
#--
echo Encrypt Key0 IV0 >> seed128tests.out 2>&1
openssl enc -seed-ofb  -K "$key0_128" -in 2560.0.in -iv "$iv0_256" -out seed128ofb.2560.key0.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ofb.2560.key0.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ofb.2560.key0.out >> seed128tests.out 2>&1 
ls -l seed128ofb.2560.key0.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key1 >> seed128tests.out 2>&1
openssl enc -seed-ofb  -K "$key1_128" -in 2560.0.in -iv "$iv1_128" -out seed128ofb.2560.key1.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ofb.2560.key1.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ofb.2560.key1.out >> seed128tests.out 2>&1 
ls -l seed128ofb.2560.key1.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo Encrypt Key2 >> seed128tests.out 2>&1
openssl enc -seed-ofb  -K "$key2_128" -in 2560.0.in -iv "$iv2_128" -out seed128ofb.2560.key2.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ofb.2560.key2.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ofb.2560.key2.out >> seed128tests.out 2>&1 
ls -l seed128ofb.2560.key2.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1


#--
echo
echo Encrypt Key3 >> seed128tests.out 2>&1
openssl enc -seed-ofb  -K "$key3_128" -in 2560.0.in -iv "$iv3_128" -out seed128ofb.2560.key3.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ofb.2560.key3.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ofb.2560.key3.out >> seed128tests.out 2>&1 
ls -l seed128ofb.2560.key3.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1

#--
echo
echo Encrypt Key4 >> seed128tests.out 2>&1
openssl enc -seed-ofb  -K "$key4_128" -in 2560.0.in -iv "$iv4_128" -out seed128ofb.2560.key4.out >> seed128tests.out 2>&1

echo Entropy >> seed128tests.out 2>&1
ent seed128ofb.2560.key4.out >> seed128tests.out 2>&1

echo GZIP >> seed128tests.out 2>&1
gzip -k -f seed128ofb.2560.key4.out >> seed128tests.out 2>&1 
ls -l seed128ofb.2560.key4.out* >> seed128tests.out 2>&1
echo >> seed128tests.out 2>&1


# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////

