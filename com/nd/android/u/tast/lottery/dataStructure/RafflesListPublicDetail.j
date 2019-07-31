.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail
.super java/lang/Object

.field private 'mHm' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;>;"

.field private 'mTotal' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/mHm Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method public getHm()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;>;"
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/mHm Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/mTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setHm(Ljava/util/HashMap;)V
.signature "(Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/mHm Ljava/util/HashMap;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/mTotal I
return
.limit locals 2
.limit stack 2
.end method
