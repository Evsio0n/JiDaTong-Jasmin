.bytecode 50.0
.class public final synchronized enum com/nd/android/u/imSdk/GroupLoginManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/imSdk/GroupLoginManager;>;"
.inner class private checkTask inner com/nd/android/u/imSdk/GroupLoginManager$checkTask outer com/nd/android/u/imSdk/GroupLoginManager

.field private static final 'CHECK_TIME' I = 10000


.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/imSdk/GroupLoginManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/imSdk/GroupLoginManager;

.field private static final 'TIME_OUT' I = 20000


.field private 'mCheckTask' Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;

.field private 'mDepartmentGroupType' I

.field private 'mGroupCmdArray' Ljava/util/concurrent/ConcurrentHashMap; signature "Ljava/util/concurrent/ConcurrentHashMap<Lims/outInterface/IGroup;Ljava/lang/Long;>;"

.field private 'mGroups' Ljava/util/List; signature "Ljava/util/List<Lims/outInterface/IGroup;>;"

.field private 'mNormalGroupType' I

.field private 'mTimer' Ljava/util/Timer;

.method static <clinit>()V
new com/nd/android/u/imSdk/GroupLoginManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/imSdk/GroupLoginManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
iconst_1
anewarray com/nd/android/u/imSdk/GroupLoginManager
dup
iconst_0
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aastore
putstatic com/nd/android/u/imSdk/GroupLoginManager/ENUM$VALUES [Lcom/nd/android/u/imSdk/GroupLoginManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic java/util/Collections/synchronizedList(Ljava/util/List;)Ljava/util/List;
putfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/imSdk/GroupLoginManager/mNormalGroupType I
aload 0
bipush 10
putfield com/nd/android/u/imSdk/GroupLoginManager/mDepartmentGroupType I
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/imSdk/GroupLoginManager/mTimer Ljava/util/Timer;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2(Lcom/nd/android/u/imSdk/GroupLoginManager;)V
aload 0
invokespecial com/nd/android/u/imSdk/GroupLoginManager/checkGroupCmdArray()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkEmpty()Z
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
ifnull L0
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/size()I
ifne L1
L0:
ldc "grouplogin"
ldc "mGroupCmdArray is empty"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
ifnull L2
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager$checkTask/cancel()Z
pop
aload 0
aconst_null
putfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private checkGroupCmdArray()V
aload 0
invokespecial com/nd/android/u/imSdk/GroupLoginManager/checkEmpty()Z
ifeq L0
return
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L3:
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L5
aload 0
invokespecial com/nd/android/u/imSdk/GroupLoginManager/checkEmpty()Z
pop
return
L2:
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 5
aload 5
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 1
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
ldc2_w 20000L
lcmp
iflt L3
aload 3
aload 5
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
invokeinterface java/util/Iterator/remove()V 0
goto L1
L5:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
astore 4
aload 4
invokeinterface ims/outInterface/IGroup/isLoginSuccess()Z 0
ifeq L6
ldc "grouplogin"
new java/lang/StringBuilder
dup
ldc "receive time out:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokeinterface ims/outInterface/IGroup/getGid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
sipush 400
invokeinterface ims/outInterface/IGroup/onReceiveMessageFeedback(I)V 1
goto L4
L6:
ldc "grouplogin"
new java/lang/StringBuilder
dup
ldc "login time out:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokeinterface ims/outInterface/IGroup/getGid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
sipush 400
invokeinterface ims/outInterface/IGroup/onLoginFeedback(I)V 1
goto L4
.limit locals 6
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/imSdk/GroupLoginManager;
ldc com/nd/android/u/imSdk/GroupLoginManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/imSdk/GroupLoginManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/imSdk/GroupLoginManager;
getstatic com/nd/android/u/imSdk/GroupLoginManager/ENUM$VALUES [Lcom/nd/android/u/imSdk/GroupLoginManager;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/imSdk/GroupLoginManager
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public addToCheckList(JLims/outInterface/IGroup;)V
.catch java/lang/IllegalStateException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
ifnonnull L3
aload 0
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
L3:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 3
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L4
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
aload 3
invokevirtual java/util/concurrent/ConcurrentHashMap/containsKey(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
aload 3
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L5:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
aload 3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
ifnonnull L1
aload 0
new com/nd/android/u/imSdk/GroupLoginManager$checkTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/imSdk/GroupLoginManager$checkTask/<init>(Lcom/nd/android/u/imSdk/GroupLoginManager;Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;)V
putfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
L0:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
ldc2_w 10000L
ldc2_w 10000L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
L1:
return
L2:
astore 3
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/imSdk/GroupLoginManager/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
ldc2_w 10000L
ldc2_w 10000L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
.limit locals 4
.limit stack 6
.end method

.method public clear()V
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
ifnull L0
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager$checkTask/cancel()Z
pop
aload 0
aconst_null
putfield com/nd/android/u/imSdk/GroupLoginManager/mCheckTask Lcom/nd/android/u/imSdk/GroupLoginManager$checkTask;
L0:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
ifnull L1
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/clear()V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public getDepartmentGroupType()I
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mDepartmentGroupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroup(Ljava/lang/String;)Lims/outInterface/IGroup;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
ifnonnull L8
aconst_null
areturn
L8:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 2
monitorexit
L3:
aconst_null
areturn
L4:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
astore 4
aload 4
invokeinterface ims/outInterface/IGroup/getGid()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
monitorexit
L5:
aload 4
areturn
L2:
astore 1
L6:
aload 2
monitorexit
L7:
aload 1
athrow
.limit locals 5
.limit stack 2
.end method

.method public getNormalGroupType()I
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mNormalGroupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public loginAllGroup(Z)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
L1:
return
L0:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifeq L1
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
iload 1
ifeq L2
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/reloginAllGroup()V
return
L2:
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
invokevirtual com/nd/android/u/controller/factory/GroupFactory/getAllGroupSupplier()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IGroupSupplier
astore 3
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IGroupSupplier/getGroupList()Ljava/util/ArrayList; 0
astore 4
aload 4
ifnull L4
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L4:
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IGroupSupplier/loginAllGroup(Ljava/util/ArrayList;)V 1
goto L3
.limit locals 5
.limit stack 2
.end method

.method public reloginAllGroup()V
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
ldc "grouplogin"
ldc "relogin all group"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
return
L2:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast ims/outInterface/IGroup
iconst_1
invokeinterface ims/outInterface/IGroup/login(Z)V 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public remove(Lims/outInterface/IGroup;)V
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
return
.limit locals 2
.limit stack 2
.end method

.method public remove(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getGroup(Ljava/lang/String;)Lims/outInterface/IGroup;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroups Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
aload 1
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public removeFromCheckList(Lims/outInterface/IGroup;)V
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
ifnull L0
aload 0
getfield com/nd/android/u/imSdk/GroupLoginManager/mGroupCmdArray Ljava/util/concurrent/ConcurrentHashMap;
aload 1
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
invokespecial com/nd/android/u/imSdk/GroupLoginManager/checkEmpty()Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setDepartmentGroupType(I)V
aload 0
iload 1
putfield com/nd/android/u/imSdk/GroupLoginManager/mDepartmentGroupType I
return
.limit locals 2
.limit stack 2
.end method

.method public setNormalGroupType(I)V
aload 0
iload 1
putfield com/nd/android/u/imSdk/GroupLoginManager/mNormalGroupType I
return
.limit locals 2
.limit stack 2
.end method
