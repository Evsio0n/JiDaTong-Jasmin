.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/TweetCountForGlances
.super java/lang/Object
.inner class private AddGlancesCountTask inner com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask outer com/android/u/weibo/weibo/utils/TweetCountForGlances

.field private static volatile 'INSTANCE' Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;

.field private final 'COUNT_RANGE' I

.field private 'mAddTask' Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurTids' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/Long;>;"

.field private 'mLastTime' J

.field private 'mTidsList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/Set<Ljava/lang/Long;>;>;"

.method static <clinit>()V
aconst_null
putstatic com/android/u/weibo/weibo/utils/TweetCountForGlances/INSTANCE Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 60000
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/COUNT_RANGE I
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mLastTime J
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/android/u/weibo/weibo/utils/TweetCountForGlances/INSTANCE Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
ifnonnull L3
ldc com/android/u/weibo/weibo/utils/TweetCountForGlances
monitorenter
L0:
getstatic com/android/u/weibo/weibo/utils/TweetCountForGlances/INSTANCE Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
ifnonnull L1
new com/android/u/weibo/weibo/utils/TweetCountForGlances
dup
aload 0
invokespecial com/android/u/weibo/weibo/utils/TweetCountForGlances/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/weibo/utils/TweetCountForGlances/INSTANCE Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
L1:
ldc com/android/u/weibo/weibo/utils/TweetCountForGlances
monitorexit
L3:
getstatic com/android/u/weibo/weibo/utils/TweetCountForGlances/INSTANCE Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
areturn
L2:
astore 0
L4:
ldc com/android/u/weibo/weibo/utils/TweetCountForGlances
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public addTid(J)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
lload 3
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mLastTime J
lsub
ldc2_w 60000L
lcmp
ifle L1
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
invokeinterface java/util/Set/isEmpty()Z 0
ifne L1
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
lload 3
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mLastTime J
L3:
aload 0
monitorexit
return
L2:
astore 5
aload 0
monitorexit
aload 5
athrow
.limit locals 6
.limit stack 4
.end method

.method public postGlancesCount()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mAddTask Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;
ifnull L4
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mAddTask Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L4
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mAddTask Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/cancel(Z)Z
pop
L1:
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mCurTids Ljava/util/Set;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
aload 0
monitorexit
return
L4:
aload 0
new com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mTidsList Ljava/util/List;
invokespecial com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/<init>(Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;Ljava/util/List;)V
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mAddTask Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances/mAddTask Lcom/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L5:
goto L1
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 5
.end method
