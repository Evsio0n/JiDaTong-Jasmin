.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/Status
.super java/lang/Object

.field private 'mdesc' Ljava/lang/String;

.field private 'mimgId' I

.field private 'mstatusId' I

.method public <init>(IILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Status/mstatusId I
aload 0
iload 2
putfield com/nd/android/u/contact/dataStructure/Status/mimgId I
aload 0
aload 3
putfield com/nd/android/u/contact/dataStructure/Status/mdesc Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method public final getDesc()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/Status/mdesc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getImgId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Status/mimgId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getStatusId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Status/mstatusId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setDesc(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/Status/mdesc Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setImgId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Status/mimgId I
return
.limit locals 2
.limit stack 2
.end method

.method public final setStatusId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Status/mstatusId I
return
.limit locals 2
.limit stack 2
.end method
