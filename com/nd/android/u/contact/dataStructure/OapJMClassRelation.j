.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapJMClassRelation
.super java/lang/Object

.field public static final 'MANAGER' I = 1


.field public static final 'MASTER' I = 3


.field public static final 'STUDENT' I = 2


.field private 'classid' I

.field private 'fid' J

.field private 'privilege' I

.field private 'userver' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrivilege()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/privilege I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/userver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrivilege(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/privilege I
return
.limit locals 2
.limit stack 2
.end method

.method public setUserver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/userver I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OapJMClassRelation [classid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/classid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", userver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/userver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", privilege="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClassRelation/privilege I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
