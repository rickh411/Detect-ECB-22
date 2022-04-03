# Detect-ECB-22
Detecting the use of ECB mode encryption using chosen plaintext and lossless compression of the resulting ciphertext for modern symmetric-key cryptsystems. 

Experimental Environment - Kali Linux 2021-2 VM and VMWare Player running on Windows 10. Installed the "ent" utility for entropy measurement. 

Included are the shell (.sh) files to generate experimental results, the 2560 byte ".in" files containing chosen ciphertext (Nulls and fully random or repeated random sequences), and the ".out" files containing experimental results. Note - The 2560.0.in (contains nulls, 0x00) was used for testing. Files containing other repeated characters provided similar results. 

Results used for the article "Detecting Encryption Vulnerabilities with Lossless Compression"

