.bytecode 50.0
.class public synchronized cn/passguard/PassGuardEncrypt
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static native Decrypt(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native Decrypt2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Encrypt(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCipher2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCipher3(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCipher4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCipherText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getKey()Ljava/lang/String;
.end method

.method public static native getMd5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getRSAAESCiphertext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokestatic cn/passguard/PassGuardEncrypt/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 2
invokestatic cn/passguard/PassGuardEncrypt/getCipherText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static native makeKey()I
.end method

.method public static native passlevel(Ljava/lang/String;)[I
.end method
