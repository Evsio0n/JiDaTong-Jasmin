.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/VersionInfo
.super java/lang/Object

.field private 'classver' I

.field private 'orgver' I

.field private 'skeletons' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Skeleton;>;"

.field private 'userver' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getClassver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/classver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/orgver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSkeletons()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Skeleton;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/skeletons Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/userver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClassver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/VersionInfo/classver I
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/VersionInfo/orgver I
return
.limit locals 2
.limit stack 2
.end method

.method public setSkeletons(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Skeleton;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/VersionInfo/skeletons Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/VersionInfo/userver I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "VersionInfo [userver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/userver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", classver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/classver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", orgver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/orgver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", skeletons="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/VersionInfo/skeletons Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
