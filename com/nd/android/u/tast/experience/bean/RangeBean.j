.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/bean/RangeBean
.super java/lang/Object

.field private 'id' J

.field private 'name' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/u/tast/experience/bean/RangeBean/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/RangeBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/experience/bean/RangeBean/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/RangeBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
