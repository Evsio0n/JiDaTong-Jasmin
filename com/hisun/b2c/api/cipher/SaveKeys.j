.bytecode 50.0
.class public synchronized com/hisun/b2c/api/cipher/SaveKeys
.super java/lang/Object

.field private 'privateKey' Ljava/security/PrivateKey;

.field private 'privateKeyText' Ljava/lang/String;

.field private 'publicKey' Ljava/security/PublicKey;

.field private 'publicKeyText' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/hisun/b2c/api/cipher/SaveKeys/publicKey Ljava/security/PublicKey;
aload 0
aload 2
putfield com/hisun/b2c/api/cipher/SaveKeys/privateKey Ljava/security/PrivateKey;
aload 0
aload 3
putfield com/hisun/b2c/api/cipher/SaveKeys/publicKeyText Ljava/lang/String;
aload 0
aload 4
putfield com/hisun/b2c/api/cipher/SaveKeys/privateKeyText Ljava/lang/String;
return
.limit locals 5
.limit stack 2
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
aload 0
getfield com/hisun/b2c/api/cipher/SaveKeys/privateKey Ljava/security/PrivateKey;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPrivateKeyText()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/cipher/SaveKeys/privateKeyText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
aload 0
getfield com/hisun/b2c/api/cipher/SaveKeys/publicKey Ljava/security/PublicKey;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPublicKeyText()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/cipher/SaveKeys/publicKeyText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
aload 0
aload 1
putfield com/hisun/b2c/api/cipher/SaveKeys/privateKey Ljava/security/PrivateKey;
return
.limit locals 2
.limit stack 2
.end method

.method public setPrivateKeyText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/cipher/SaveKeys/privateKeyText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
aload 0
aload 1
putfield com/hisun/b2c/api/cipher/SaveKeys/publicKey Ljava/security/PublicKey;
return
.limit locals 2
.limit stack 2
.end method

.method public setPublicKeyText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/cipher/SaveKeys/publicKeyText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
