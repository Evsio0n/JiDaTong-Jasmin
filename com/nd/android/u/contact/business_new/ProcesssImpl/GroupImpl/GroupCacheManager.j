.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;

.field private 'groupCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
.catch all from L0 to L1 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
astore 0
L1:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
lload 1
lconst_0
lcmp
ifle L0
aload 3
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public clear()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public delGroup(J)V
lload 1
lconst_0
lcmp
ifgt L0
return
L0:
ldc "winnyang"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delGroup:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
return
.limit locals 3
.limit stack 4
.end method

.method public getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
lload 1
lconst_0
lcmp
ifgt L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
areturn
.limit locals 3
.limit stack 4
.end method

.method public hasGroup(J)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/groupCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ireturn
.limit locals 3
.limit stack 3
.end method
