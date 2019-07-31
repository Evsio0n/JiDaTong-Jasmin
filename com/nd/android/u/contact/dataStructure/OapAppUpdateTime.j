.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapAppUpdateTime
.super java/lang/Object

.field public 'mappid' I

.field private 'mcode' Ljava/lang/String;

.field private 'muid' J

.field private 'mupdatetime' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getAppid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mappid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/muid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getUpdatetime()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mupdatetime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final setAppid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mappid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/muid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setUpdatetime(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapAppUpdateTime/mupdatetime J
return
.limit locals 3
.limit stack 3
.end method
