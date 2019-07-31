.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic
.super java/lang/Object

.field private 'mAllTotal' I

.field private 'mlotUserData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;"

.field private 'mrank' I

.field private 'mtotal' I

.field private 'priseNum' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAllTotal()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mAllTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLotUserData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;"
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mlotUserData Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRank()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mrank I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mtotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getpriseNum()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/priseNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAllTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mAllTotal I
return
.limit locals 2
.limit stack 2
.end method

.method public setLotUserData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mlotUserData Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/priseNum I
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
astore 3
aload 2
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L0
aload 2
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
aload 0
aload 2
invokeinterface java/util/Map/size()I 0
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/priseNum I
aload 2
invokeinterface java/util/Map/clear()V 0
return
.limit locals 4
.limit stack 3
.end method

.method public setRank(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mrank I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/mtotal I
return
.limit locals 2
.limit stack 2
.end method
