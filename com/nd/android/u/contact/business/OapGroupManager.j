.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapGroupManager
.super java/lang/Object
.inner class static final inner com/nd/android/u/contact/business/OapGroupManager$1
.inner class static final inner com/nd/android/u/contact/business/OapGroupManager$2

.field private static final 'TAG' Ljava/lang/String; = "OapGroupManager"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getGroupName(J)Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
lload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
L0:
aload 2
ifnull L1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 0
lcmp
ifne L1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getGroupNameByGUid(JJ)Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
lload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findAvailGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
L0:
aload 4
ifnull L1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 0
lcmp
ifne L1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
areturn
L1:
ldc "OapGroupManager"
ldc "local don't exit group"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 0
new com/nd/android/u/contact/business/OapGroupManager$2
dup
invokespecial com/nd/android/u/contact/business/OapGroupManager$2/<init>()V
invokevirtual com/nd/android/u/contact/business/GroupCacheManager/loadGroup(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 5
.end method

.method public static getGroupNameByGid(J)Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
lload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
L0:
aload 2
ifnull L1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 0
lcmp
ifne L1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
areturn
L1:
ldc "OapGroupManager"
ldc "local don't exit group"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 0
new com/nd/android/u/contact/business/OapGroupManager$1
dup
invokespecial com/nd/android/u/contact/business/OapGroupManager$1/<init>()V
invokevirtual com/nd/android/u/contact/business/GroupCacheManager/loadGroup(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method
