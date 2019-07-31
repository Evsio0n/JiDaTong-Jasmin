.bytecode 50.0
.class public synchronized com/alipay/sdk/auth/APAuthInfo
.super java/lang/Object

.field private 'a' Ljava/lang/String;

.field private 'b' Ljava/lang/String;

.field private 'c' Ljava/lang/String;

.field private 'd' Ljava/lang/String;

.method public <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
invokespecial com/alipay/sdk/auth/APAuthInfo/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/auth/APAuthInfo/a Ljava/lang/String;
aload 0
aload 2
putfield com/alipay/sdk/auth/APAuthInfo/b Ljava/lang/String;
aload 0
aload 3
putfield com/alipay/sdk/auth/APAuthInfo/d Ljava/lang/String;
aload 0
aload 4
putfield com/alipay/sdk/auth/APAuthInfo/c Ljava/lang/String;
return
.limit locals 5
.limit stack 2
.end method

.method public getAppId()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/auth/APAuthInfo/a Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPid()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/auth/APAuthInfo/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProductId()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/auth/APAuthInfo/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRedirectUri()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/auth/APAuthInfo/d Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
