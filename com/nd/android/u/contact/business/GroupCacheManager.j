.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/GroupCacheManager
.super java/lang/Object
.inner class inner com/nd/android/u/contact/business/GroupCacheManager$1
.inner class private GetGroupTask inner com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask outer com/nd/android/u/contact/business/GroupCacheManager
.inner class GroupItem inner com/nd/android/u/contact/business/GroupCacheManager$GroupItem outer com/nd/android/u/contact/business/GroupCacheManager

.field public static final 'EXTRA_GROUP' Ljava/lang/String; = "extra_user"

.field private static final 'EXTRA_GROUPTYPE' Ljava/lang/String; = "extra_grouptype"

.field public static final 'EXTRA_USER_GID' Ljava/lang/String; = "extra_user_fid"

.field private static final 'TAG' Ljava/lang/String; = "GroupCacheManager"

.field private static 'instance' Lcom/nd/android/u/contact/business/GroupCacheManager;

.field private 'handler' Landroid/os/Handler;

.field private 'mCallbackMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;Lcom/nd/android/u/contact/cache/ProfileGroupCallback;>;"

.field private 'mGroupList' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;>;"

.field private 'mTask' Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;

.method static <clinit>()V
new com/nd/android/u/contact/business/GroupCacheManager
dup
invokespecial com/nd/android/u/contact/business/GroupCacheManager/<init>()V
putstatic com/nd/android/u/contact/business/GroupCacheManager/instance Lcom/nd/android/u/contact/business/GroupCacheManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/ArrayBlockingQueue
dup
bipush 50
invokespecial java/util/concurrent/ArrayBlockingQueue/<init>(I)V
putfield com/nd/android/u/contact/business/GroupCacheManager/mGroupList Ljava/util/concurrent/BlockingQueue;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
aload 0
new com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;Lcom/nd/android/u/contact/business/GroupCacheManager$1;)V
putfield com/nd/android/u/contact/business/GroupCacheManager/mTask Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;
aload 0
new com/nd/android/u/contact/business/GroupCacheManager$1
dup
aload 0
invokespecial com/nd/android/u/contact/business/GroupCacheManager$1/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;)V
putfield com/nd/android/u/contact/business/GroupCacheManager/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mGroupList Ljava/util/concurrent/BlockingQueue;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/business/GroupCacheManager;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doGetGroup(Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;)V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L3 to L4 using L5
.catch java/lang/RuntimeException from L6 to L7 using L5
aload 1
ifnull L1
L0:
aload 0
aload 1
invokespecial com/nd/android/u/contact/business/GroupCacheManager/putGroup(Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;)V
L1:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mTask Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;
invokevirtual com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/getState()Ljava/lang/Thread$State;
astore 1
L3:
getstatic java/lang/Thread$State/NEW Ljava/lang/Thread$State;
aload 1
if_acmpne L6
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mTask Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;
invokevirtual com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/start()V
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
L6:
getstatic java/lang/Thread$State/TERMINATED Ljava/lang/Thread$State;
aload 1
if_acmpne L4
aload 0
new com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;Lcom/nd/android/u/contact/business/GroupCacheManager$1;)V
putfield com/nd/android/u/contact/business/GroupCacheManager/mTask Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mTask Lcom/nd/android/u/contact/business/GroupCacheManager$GetGroupTask;
invokevirtual com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/start()V
L7:
return
L5:
astore 1
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
getstatic com/nd/android/u/contact/business/GroupCacheManager/instance Lcom/nd/android/u/contact/business/GroupCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method private putGroup(Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;)V
.throws java/lang/InterruptedException
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mGroupList Ljava/util/concurrent/BlockingQueue;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mGroupList Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mGroupList Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/put(Ljava/lang/Object;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public loadDiscussion(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
new com/nd/android/u/contact/business/GroupCacheManager$GroupItem
dup
aload 0
lload 1
iconst_3
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GroupItem/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;JI)V
astore 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
aload 4
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 4
invokespecial com/nd/android/u/contact/business/GroupCacheManager/doGetGroup(Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;)V
L0:
return
.limit locals 5
.limit stack 6
.end method

.method public loadGroup(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
new com/nd/android/u/contact/business/GroupCacheManager$GroupItem
dup
aload 0
lload 1
iconst_0
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GroupItem/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;JI)V
astore 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager/mCallbackMap Ljava/util/HashMap;
aload 4
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 4
invokespecial com/nd/android/u/contact/business/GroupCacheManager/doGetGroup(Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;)V
L0:
return
.limit locals 5
.limit stack 6
.end method
