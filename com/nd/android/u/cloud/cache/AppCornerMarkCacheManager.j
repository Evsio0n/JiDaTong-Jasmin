.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/cache/AppCornerMarkCacheManager
.super java/lang/Object
.inner class static synthetic inner com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1
.inner class private GetUserTask inner com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask outer com/nd/android/u/cloud/cache/AppCornerMarkCacheManager
.inner class private static Params inner com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params outer com/nd/android/u/cloud/cache/AppCornerMarkCacheManager

.field public static final 'EXTRA_CORNERMARK_MSG' Ljava/lang/String; = "extra_appmenu_msg"

.field public static final 'EXTRA_CornerMark' Ljava/lang/String; = "extra_appmenu"

.field private static 'instance' Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;

.field private static 'mCache' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/android/u/cloud/cache/CornerMark;Ljava/lang/Integer;>;"

.field private static 'mUrlCache' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/android/u/cloud/cache/CornerMark;Ljava/lang/String;>;"

.field private 'isRefresh' Z

.field private 'mCallbackMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/android/u/cloud/cache/CornerMark;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;>;"

.field private 'mCornerMarkList' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Lcom/nd/android/u/cloud/cache/CornerMark;>;"

.field private 'mTask' Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mUrlCache Ljava/util/HashMap;
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager
dup
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/<init>()V
putstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/instance Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
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
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 0
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mTask Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;
aload 0
iconst_0
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/isRefresh Z
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200()Ljava/util/HashMap;
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mUrlCache Ljava/util/HashMap;
areturn
.limit locals 0
.limit stack 1
.end method

.method private doGetAppMenuMsg(Lcom/nd/android/u/cloud/cache/CornerMark;)V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L3 to L4 using L5
.catch java/lang/RuntimeException from L6 to L7 using L5
aload 1
ifnull L1
L0:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/putAppMenu(Lcom/nd/android/u/cloud/cache/CornerMark;)V
L1:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mTask Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/getState()Ljava/lang/Thread$State;
astore 1
L3:
getstatic java/lang/Thread$State/NEW Ljava/lang/Thread$State;
aload 1
if_acmpne L6
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mTask Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/start()V
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
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mTask Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mTask Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask;
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/start()V
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

.method public static getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/instance Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method private putAppMenu(Lcom/nd/android/u/cloud/cache/CornerMark;)V
.throws java/lang/InterruptedException
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
aload 1
invokeinterface java/util/concurrent/BlockingQueue/put(Ljava/lang/Object;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public clear()V
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
ifnull L0
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
L0:
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mUrlCache Ljava/util/HashMap;
ifnull L1
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mUrlCache Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public getAppTypeCornerMarkByService(Ljava/lang/String;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;)I
iconst_0
istore 5
iconst_0
istore 3
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapApps(Ljava/lang/String;)Ljava/util/Vector; 1
astore 1
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/setRefresh(Z)V
iload 5
istore 4
aload 1
ifnull L0
iload 5
istore 4
aload 1
invokevirtual java/util/Vector/size()I
ifle L0
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L1:
iload 3
istore 4
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 6
iload 3
aload 0
aload 6
getfield com/product/android/commonInterface/contact/OapApp/appid I
aload 6
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getCornerMarkByService(ILjava/lang/String;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;)I
iadd
istore 3
goto L1
L0:
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/setRefresh(Z)V
iload 4
ireturn
.limit locals 7
.limit stack 5
.end method

.method public getCornerMarkByCache(ILjava/lang/String;)I
new com/nd/android/u/cloud/cache/CornerMark
dup
iload 1
aload 2
invokespecial com/nd/android/u/cloud/cache/CornerMark/<init>(ILjava/lang/String;)V
astore 2
iconst_0
istore 1
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getCornerMarkByService(ILjava/lang/String;Lcom/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback;)I
.catch java/lang/InterruptedException from L0 to L1 using L2
new com/nd/android/u/cloud/cache/CornerMark
dup
iload 1
aload 2
invokespecial com/nd/android/u/cloud/cache/CornerMark/<init>(ILjava/lang/String;)V
astore 2
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L3
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
L3:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 2
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifne L0
aload 0
aload 2
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/doGetAppMenuMsg(Lcom/nd/android/u/cloud/cache/CornerMark;)V
L4:
iconst_0
ireturn
L0:
aload 0
aload 2
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/putAppMenu(Lcom/nd/android/u/cloud/cache/CornerMark;)V
L1:
goto L4
L2:
astore 2
aload 2
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L4
.limit locals 4
.limit stack 4
.end method

.method public onEventMainThread(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)V
aload 1
ifnonnull L0
L1:
return
L0:
getstatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCache Ljava/util/HashMap;
aload 1
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$400(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)Lcom/nd/android/u/cloud/cache/CornerMark;
aload 1
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$500(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 1
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$400(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)Lcom/nd/android/u/cloud/cache/CornerMark;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback
astore 2
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 1
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$400(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;)Lcom/nd/android/u/cloud/cache/CornerMark;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 2
ifnull L2
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/isRefresh Z
ifeq L2
aload 2
invokeinterface com/nd/android/u/cloud/cache/ProfileAppMenuCacheCallback/refresh()V 0
L2:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifne L1
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131074
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public setRefresh(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/isRefresh Z
return
.limit locals 2
.limit stack 2
.end method

.method public updateCornerMarkByService(ILjava/lang/String;)V
.catch java/lang/InterruptedException from L0 to L1 using L2
iload 1
ifeq L3
aload 2
ifnonnull L4
L3:
return
L4:
new com/nd/android/u/cloud/cache/CornerMark
dup
iload 1
aload 2
invokespecial com/nd/android/u/cloud/cache/CornerMark/<init>(ILjava/lang/String;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L3
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCallbackMap Ljava/util/HashMap;
aload 2
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/mCornerMarkList Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifne L0
aload 0
aload 2
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/doGetAppMenuMsg(Lcom/nd/android/u/cloud/cache/CornerMark;)V
return
L0:
aload 0
aload 2
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/putAppMenu(Lcom/nd/android/u/cloud/cache/CornerMark;)V
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method
