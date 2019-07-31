.bytecode 50.0
.class public final synchronized enum com/nd/android/backpacksystem/data/BackpackSystemData
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/backpacksystem/data/BackpackSystemData;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/backpacksystem/data/BackpackSystemData;

.field public static final enum 'INSTANCE' Lcom/nd/android/backpacksystem/data/BackpackSystemData;

.field private 'mCurrentLoadDataSize' I

.field private 'mForDifference' Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;

.field private 'mItemProperty' Ljava/util/concurrent/ConcurrentMap; signature "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Long;Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;"

.field private 'mMyItems' Ljava/util/concurrent/ConcurrentMap; signature "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Long;Lcom/nd/android/backpacksystem/data/MyItems;>;"

.field private 'mReceiveItems' Ljava/util/concurrent/ConcurrentMap; signature "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lcom/nd/android/backpacksystem/data/ReceiveItems;>;"

.method static <clinit>()V
new com/nd/android/backpacksystem/data/BackpackSystemData
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/backpacksystem/data/BackpackSystemData/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
iconst_1
anewarray com/nd/android/backpacksystem/data/BackpackSystemData
dup
iconst_0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aastore
putstatic com/nd/android/backpacksystem/data/BackpackSystemData/$VALUES [Lcom/nd/android/backpacksystem/data/BackpackSystemData;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
aload 0
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
aload 0
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mCurrentLoadDataSize I
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/backpacksystem/data/BackpackSystemData;
ldc com/nd/android/backpacksystem/data/BackpackSystemData
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/backpacksystem/data/BackpackSystemData
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/backpacksystem/data/BackpackSystemData;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/$VALUES [Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual [Lcom/nd/android/backpacksystem/data/BackpackSystemData;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/backpacksystem/data/BackpackSystemData;
areturn
.limit locals 0
.limit stack 1
.end method

.method public addItemProperty(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/BaseItemProperty
astore 2
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getItemTypeId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 2
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public appendMyItems(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;)V"
aload 1
ifnull L0
aload 0
aload 1
invokeinterface java/util/List/size()I 0
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mCurrentLoadDataSize I
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 2
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
aload 2
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 2
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L1
L2:
return
.limit locals 3
.limit stack 3
.end method

.method public appendReceiveItem(Lcom/nd/android/backpacksystem/data/ReceiveItems;)V
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
aload 1
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/getKey()Ljava/lang/String;
aload 1
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 2
.limit stack 3
.end method

.method public appendReceiveItems(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/ReceiveItems
astore 2
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
aload 2
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/getKey()Ljava/lang/String;
aload 2
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/clear()V 0
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/clear()V 0
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/clear()V 0
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mCurrentLoadDataSize I
return
.limit locals 1
.limit stack 2
.end method

.method public getBaseItemPropertyList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/BaseItemProperty
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getCurrentLoadDataSize()I
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mCurrentLoadDataSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getInterfaceForDifference()Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mForDifference Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
ifnonnull L0
aload 0
new com/nd/android/backpacksystem/interfaces/DefaultImpl
dup
invokespecial com/nd/android/backpacksystem/interfaces/DefaultImpl/<init>()V
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mForDifference Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
L0:
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mForDifference Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/ConcurrentMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/backpacksystem/data/BaseItemProperty
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/ConcurrentMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/backpacksystem/data/MyItems
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMyItemList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 3
aload 0
aload 3
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
ifnull L0
aload 3
invokevirtual com/nd/android/backpacksystem/data/MyItems/hasExpire()Z
ifne L0
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public getMyItemSize()I
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceiveItem(J)Lcom/nd/android/backpacksystem/data/ReceiveItems;
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/isEmpty()Z 0
ifeq L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokeinterface java/util/concurrent/ConcurrentMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/backpacksystem/data/ReceiveItems
areturn
.limit locals 3
.limit stack 3
.end method

.method public getReceiveItemList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getReceiveItemSize()I
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mReceiveItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRedRoseAmount()I
iconst_0
istore 1
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 3
aload 3
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
sipush 20000
if_icmpne L0
iload 1
aload 3
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
iadd
istore 1
goto L0
L1:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public hasData()Z
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/isEmpty()Z 0
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hasItemProperty(J)Z
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mItemProperty Ljava/util/concurrent/ConcurrentMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/ConcurrentMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setDifferenceInterface(Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BackpackSystemData/mForDifference Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
return
.limit locals 2
.limit stack 2
.end method

.method public updateItemCount(JI)V
aload 0
lload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
astore 5
aload 5
ifnonnull L0
return
L0:
iload 3
ifgt L1
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/ConcurrentMap/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
return
L1:
iload 3
istore 4
iload 3
ifge L2
iconst_0
istore 4
L2:
aload 5
iload 4
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
return
.limit locals 6
.limit stack 3
.end method

.method public updateItemCountByType(JI)V
aload 0
getfield com/nd/android/backpacksystem/data/BackpackSystemData/mMyItems Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L0:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 6
aload 6
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
lload 1
lcmp
ifne L0
iload 3
istore 4
iload 3
ifge L2
iconst_0
istore 4
L2:
aload 6
iload 4
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
L1:
return
.limit locals 7
.limit stack 4
.end method
