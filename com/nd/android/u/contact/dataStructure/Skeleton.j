.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/Skeleton
.super java/lang/Object

.field private 'classes' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;"

.field private 'id' I

.field private 'pid' I

.field private 'uids' [I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getClasses()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/classes Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/pid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUids()[I
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/uids [I
areturn
.limit locals 1
.limit stack 1
.end method

.method public setClasses(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/Skeleton/classes Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Skeleton/id I
return
.limit locals 2
.limit stack 2
.end method

.method public setPid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Skeleton/pid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUids([I)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/Skeleton/uids [I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Skeleton [id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/pid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/uids [I
invokestatic java/util/Arrays/toString([I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", classes="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/Skeleton/classes Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
