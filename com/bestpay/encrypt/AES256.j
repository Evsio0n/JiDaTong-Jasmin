.bytecode 50.0
.class public synchronized com/bestpay/encrypt/AES256
.super java/lang/Object

.field static final 'CIPHER_ALGORITHM_CBC' Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field static final 'CIPHER_ALGORITHM_ECB' Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field public static final 'INPUT_CHARSET' Ljava/lang/String; = "UTF-8"

.field static final 'KEY_ALGORITHM' Ljava/lang/String; = "AES"

.field public static 'ivBytes' [B

.method static <clinit>()V
bipush 16
newarray byte
putstatic com/bestpay/encrypt/AES256/ivBytes [B
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static AES_Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
invokestatic com/bestpay/encrypt/Base64/decode(Ljava/lang/String;)[B
astore 0
new javax/crypto/spec/IvParameterSpec
dup
getstatic com/bestpay/encrypt/AES256/ivBytes [B
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
astore 2
new javax/crypto/spec/SecretKeySpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 1
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_2
aload 1
aload 2
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
new java/lang/String
dup
aload 3
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
ldc "UTF-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public static AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 0
new javax/crypto/spec/IvParameterSpec
dup
getstatic com/bestpay/encrypt/AES256/ivBytes [B
invokespecial javax/crypto/spec/IvParameterSpec/<init>([B)V
astore 2
new javax/crypto/spec/SecretKeySpec
dup
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "AES"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 1
ldc "AES/CBC/PKCS5Padding"
invokestatic javax/crypto/Cipher/getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
astore 3
aload 3
iconst_1
aload 1
aload 2
invokevirtual javax/crypto/Cipher/init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
aload 3
aload 0
invokevirtual javax/crypto/Cipher/doFinal([B)[B
invokestatic com/bestpay/encrypt/Base64/encode([B)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getStringRandom(I)Ljava/lang/String;
ldc ""
astore 4
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 6
iconst_0
istore 1
L0:
iload 1
iload 0
if_icmplt L1
aload 4
areturn
L1:
aload 6
iconst_2
invokevirtual java/util/Random/nextInt(I)I
iconst_2
irem
ifne L2
ldc "char"
astore 5
L3:
ldc "char"
aload 5
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 6
iconst_2
invokevirtual java/util/Random/nextInt(I)I
iconst_2
irem
ifne L5
bipush 65
istore 2
L6:
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
bipush 26
invokevirtual java/util/Random/nextInt(I)I
iload 2
iadd
i2c
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L7:
iload 1
iconst_1
iadd
istore 1
aload 3
astore 4
goto L0
L2:
ldc "num"
astore 5
goto L3
L5:
bipush 97
istore 2
goto L6
L4:
aload 4
astore 3
ldc "num"
aload 5
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
bipush 10
invokevirtual java/util/Random/nextInt(I)I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L7
.limit locals 7
.limit stack 3
.end method

.method public static main([Ljava/lang/String;)V
.throws java/lang/Exception
ldc "{bankCode:1,title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",addtime:\\\"2010-05-03\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\"}"
ldc "abcdefghijklmnopqrstuvwxyz123456"
invokestatic com/bestpay/encrypt/AES256/AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "AES256_Encode : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
ldc "voKWn5aAxanYvVm/v9vLr70E2JPmxw7YdoUx/HXpm27MpEd+eNuA9Hwn3aX5OjK7 My02YC1g2EgRFYUJEFZAhIEPQnSnP2JHMJnQv4HVG9pTbvZ7KwgMwrUkLalW9Q7U w1fTY+xpWj6n4+ruVdvZo9JohbZa7yjFD1Y+eliMSX9otZK9HmihcnaqBNCoVRbX ZCN2t0A2nXKQwzAm9wAj0QHPkn+gb0GJexBpINz17pURJhTLpfnTPk6rA5CeFJ+V JeDAn0zMUHIMuqWhAQykXsPKKZAUK+xrkqmovV5ln6Gx2EKYoNMA8358tNkp+hDQ STZfYCbB58qmyK3yL98rsMO9QrGzhr2dnrAWq8iu21UoGCs+xzC440I/n0p2B5QJ FpeSbmCz4pNzYPhaczVaSypndmj9Q1pv/vKGxrAbGqHDZH44fIJdA3iywrFf8rIC xuptuVV+sbp2bW8Mc4eBcg=="
ldc "abcdefghijklmnopqrstuvwxyz123456"
invokestatic com/bestpay/encrypt/AES256/AES_Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "AES256_Decode : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method
