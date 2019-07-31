.bytecode 50.0
.class public synchronized com/bestpay/db/AccountInfo
.super java/lang/Object

.field private 'dt' Ljava/util/Date;

.field private 'key_index' Ljava/lang/String;

.field private 'key_tid' Ljava/lang/String;

.field private 'tid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDt()Ljava/util/Date;
aload 0
getfield com/bestpay/db/AccountInfo/dt Ljava/util/Date;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getKey_index()Ljava/lang/String;
aload 0
getfield com/bestpay/db/AccountInfo/key_index Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getKey_tid()Ljava/lang/String;
aload 0
getfield com/bestpay/db/AccountInfo/key_tid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTid()Ljava/lang/String;
aload 0
getfield com/bestpay/db/AccountInfo/tid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setDt(Ljava/util/Date;)V
aload 0
aload 1
putfield com/bestpay/db/AccountInfo/dt Ljava/util/Date;
return
.limit locals 2
.limit stack 2
.end method

.method public setKey_index(Ljava/lang/String;)V
aload 0
aload 1
putfield com/bestpay/db/AccountInfo/key_index Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setKey_tid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/bestpay/db/AccountInfo/key_tid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/bestpay/db/AccountInfo/tid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
