.bytecode 50.0
.class public synchronized com/nd/android/u/image/ProfileUserShowImageCacheManager
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "ProfileUserShowImageCacheManager"

.field private 'mHasUpdateCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/image/ProfileUserShowImageCacheManager/mHasUpdateCache Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public hasShowUpdateTime(J)Z
aload 0
getfield com/nd/android/u/image/ProfileUserShowImageCacheManager/mHasUpdateCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/image/ProfileUserShowImageCacheManager/mHasUpdateCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifle L0
iconst_1
ireturn
L0:
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
lload 1
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/findHeaderImage(J)Lcom/nd/android/u/contact/dataStructure/HeaderImage; 2
astore 3
aload 3
ifnull L1
aload 0
getfield com/nd/android/u/image/ProfileUserShowImageCacheManager/mHasUpdateCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getShowupdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/getShowupdatetime()J
lconst_0
lcmp
ifle L2
iconst_1
ireturn
L2:
iconst_0
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method
