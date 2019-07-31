.bytecode 50.0
.class public synchronized com/hisun/b2c/api/cipher/RSACode
.super java/lang/Object

.field private static 'HEXCHAR' [C

.method static <clinit>()V
bipush 16
newarray char
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 49
castore
dup
iconst_2
ldc_w 50
castore
dup
iconst_3
ldc_w 51
castore
dup
iconst_4
ldc_w 52
castore
dup
iconst_5
ldc_w 53
castore
dup
bipush 6
ldc_w 54
castore
dup
bipush 7
ldc_w 55
castore
dup
bipush 8
ldc_w 56
castore
dup
bipush 9
ldc_w 57
castore
dup
bipush 10
ldc_w 97
castore
dup
bipush 11
ldc_w 98
castore
dup
bipush 12
ldc_w 99
castore
dup
bipush 13
ldc_w 100
castore
dup
bipush 14
ldc_w 101
castore
dup
bipush 15
ldc_w 102
castore
putstatic com/hisun/b2c/api/cipher/RSACode/HEXCHAR [C
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
.throws java/lang/Exception
new java/security/spec/RSAPublicKeySpec
dup
new java/math/BigInteger
dup
aload 0
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
new java/math/BigInteger
dup
aload 1
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
invokespecial java/security/spec/RSAPublicKeySpec/<init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
astore 0
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 0
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
areturn
.limit locals 2
.limit stack 6
.end method

.method public static getRSADeviceId(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "7958303303246649642572103856093144643692106693709121839660661879729718416092491630267401507146322500564733836481385072229041981977820226648641150810967773"
ldc "65537"
invokestatic com/hisun/b2c/api/cipher/RSACode/getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
astore 1
ldc "RSA/None/PKCS1Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 2
aload 0
invokevirtual java/lang/String/getBytes()[B
astore 0
aload 2
iconst_1
aload 1
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;)V
aload 2
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokestatic com/hisun/b2c/api/cipher/RSACode/toHexString([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public static toHexString([B)Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
arraylength
iconst_2
imul
invokespecial java/lang/StringBuilder/<init>(I)V
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
arraylength
if_icmplt L1
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 2
getstatic com/hisun/b2c/api/cipher/RSACode/HEXCHAR [C
aload 0
iload 1
baload
sipush 240
iand
iconst_4
iushr
caload
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
getstatic com/hisun/b2c/api/cipher/RSACode/HEXCHAR [C
aload 0
iload 1
baload
bipush 15
iand
caload
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 4
.end method
