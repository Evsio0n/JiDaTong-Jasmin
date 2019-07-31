.bytecode 50.0
.class public synchronized cmb/pb/util/g
.super java/lang/Object

.method public static a(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "AES"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_1
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokestatic cmb/pb/util/a/a([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public static b(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
ldc "AES"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 2
iconst_2
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
aload 2
aload 0
invokestatic cmb/pb/util/a/a(Ljava/lang/String;)[B
invokevirtual javax/crypto/Cipher/doFinal([B)[B
astore 0
L1:
aload 0
ifnonnull L3
aconst_null
areturn
L3:
new java/lang/String
dup
aload 0
ldc "UTF-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 0
L4:
aload 0
areturn
L2:
astore 0
aconst_null
astore 0
goto L4
.limit locals 3
.limit stack 4
.end method
