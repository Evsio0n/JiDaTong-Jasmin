.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/UserInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field private 'name' Ljava/lang/String;

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/UserInfo/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/teamfile/sdk/type/UserInfo/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/UserInfo/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/UserInfo/uid J
return
.limit locals 3
.limit stack 3
.end method
