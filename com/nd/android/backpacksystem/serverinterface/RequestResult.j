.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/RequestResult
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject

.field private final 'mRetCode' I

.field private final 'mRetResponse' Ljava/lang/String;

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/backpacksystem/serverinterface/RequestResult/mRetCode I
aload 0
aload 2
putfield com/nd/android/backpacksystem/serverinterface/RequestResult/mRetResponse Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public getRetCode()I
aload 0
getfield com/nd/android/backpacksystem/serverinterface/RequestResult/mRetCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRetResponse()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/serverinterface/RequestResult/mRetResponse Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/RequestResult/mRetCode I
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
