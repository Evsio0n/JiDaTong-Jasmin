.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/cache/StatusCacheManager
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/cloud/cache/StatusCacheManager;

.field private 'statusMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"

.method static <clinit>()V
new com/nd/android/u/cloud/cache/StatusCacheManager
dup
invokespecial com/nd/android/u/cloud/cache/StatusCacheManager/<init>()V
putstatic com/nd/android/u/cloud/cache/StatusCacheManager/instance Lcom/nd/android/u/cloud/cache/StatusCacheManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/cache/StatusCacheManager;
getstatic com/nd/android/u/cloud/cache/StatusCacheManager/instance Lcom/nd/android/u/cloud/cache/StatusCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method private setStatusList(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/util/Map;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map
astore 3
aload 2
aload 3
ldc "frd_uid"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
ldc "frd_status"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L3:
goto L1
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L4:
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/cache/StatusCacheManager/setStatusMap(Ljava/util/Map;)V
L5:
aload 0
monitorexit
return
.limit locals 4
.limit stack 4
.end method

.method public clear()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L1:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
astore 1
L3:
aload 1
ifnull L4
L4:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public getStatusMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public getUserStatus(J)I
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setFriendStatus(JI)V
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L1
L1:
return
.limit locals 4
.limit stack 3
.end method

.method public setFriendStatus(Landroid/os/Bundle;)V
lconst_0
lstore 3
iconst_0
istore 2
aload 1
ifnull L0
aload 1
ldc "frd_uid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 1
ldc "frd_uid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 3
L1:
aload 1
ldc "frd_status"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 1
ldc "frd_status"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnull L3
aload 1
invokevirtual com/product/android/business/login/BindUser/getUid()J
lload 3
lcmp
ifne L3
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/getOnlineState()I
iload 2
if_icmpeq L3
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
iload 2
invokevirtual ims/manager/IMSStateManager/saveOnlineState(I)V
L3:
aload 0
lload 3
iload 2
invokevirtual com/nd/android/u/cloud/cache/StatusCacheManager/setFriendStatus(JI)V
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public setStatusListByCMD_39(Landroid/os/Bundle;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
aload 1
ifnull L6
L0:
aload 1
ldc "list_39"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L6
aload 1
ldc "list_39"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/List
astore 1
L1:
aload 1
ifnull L6
L3:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast [Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
aload 2
iconst_0
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
aload 2
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L5:
goto L4
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
aload 0
monitorexit
return
.limit locals 3
.limit stack 4
.end method

.method public setStatusListByCMD_53(Landroid/os/Bundle;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
aload 1
ifnull L1
L0:
aload 1
ldc "list_53"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "list_53"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/List
invokespecial com/nd/android/u/cloud/cache/StatusCacheManager/setStatusList(Ljava/util/List;)V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public setStatusMap(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
aload 1
ifnonnull L1
L0:
aload 0
invokevirtual com/nd/android/u/cloud/cache/StatusCacheManager/clear()V
L1:
aload 0
aload 1
putfield com/nd/android/u/cloud/cache/StatusCacheManager/statusMap Ljava/util/Map;
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method
