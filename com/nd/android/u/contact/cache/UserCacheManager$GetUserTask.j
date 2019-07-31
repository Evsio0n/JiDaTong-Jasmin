.bytecode 50.0
.class synchronized com/nd/android/u/contact/cache/UserCacheManager$GetUserTask
.super java/lang/Thread
.inner class private GetUserTask inner com/nd/android/u/contact/cache/UserCacheManager$GetUserTask outer com/nd/android/u/contact/cache/UserCacheManager

.field private static final 'TIMEOUT' I = 5


.field 'fid' J

.field private volatile 'mTaskTerminated' Z

.field final synthetic 'this$0' Lcom/nd/android/u/contact/cache/UserCacheManager;

.field 'user' Lcom/product/android/commonInterface/contact/OapUser;

.method private <init>(Lcom/nd/android/u/contact/cache/UserCacheManager;)V
aload 0
aload 1
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
aload 0
aconst_null
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/user Lcom/product/android/commonInterface/contact/OapUser;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/cache/UserCacheManager;Lcom/nd/android/u/contact/cache/UserCacheManager$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/<init>(Lcom/nd/android/u/contact/cache/UserCacheManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch all from L5 to L6 using L4
.catch all from L7 to L8 using L4
L9:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
ifne L10
L0:
aload 0
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
ldc2_w 5L
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/BlockingQueue/poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object; 3
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/fid J
aload 0
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/user Lcom/product/android/commonInterface/contact/OapUser;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "UPDATE_NEW_FANS_FACE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
new com/nd/android/u/contact/cache/UserCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/contact/cache/UserCacheManager$Params/<init>(Lcom/nd/android/u/contact/cache/UserCacheManager$1;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/fid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$302(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;J)J
pop2
aload 1
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/user Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$402(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 1
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L9
aload 0
iconst_1
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
goto L9
L2:
astore 1
L5:
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
L6:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L9
aload 0
iconst_1
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
goto L9
L3:
astore 1
L7:
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
L8:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L9
aload 0
iconst_1
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
goto L9
L4:
astore 1
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/this$0 Lcom/nd/android/u/contact/cache/UserCacheManager;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L11
aload 0
iconst_1
putfield com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/mTaskTerminated Z
L11:
aload 1
athrow
L10:
return
.limit locals 2
.limit stack 5
.end method
