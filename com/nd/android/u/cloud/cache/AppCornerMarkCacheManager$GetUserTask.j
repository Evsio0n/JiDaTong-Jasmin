.bytecode 50.0
.class synchronized com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask
.super java/lang/Thread
.inner class private GetUserTask inner com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask outer com/nd/android/u/cloud/cache/AppCornerMarkCacheManager

.field private static final 'TIMEOUT' I = 50


.field 'cm' Lcom/nd/android/u/cloud/cache/CornerMark;

.field 'count' I

.field private volatile 'mTaskTerminated' Z

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;

.field 'url' Ljava/lang/String;

.method private <init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
aload 0
aconst_null
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
aload 0
iconst_0
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
aload 0
ldc ""
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/RuntimeException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/lang/InterruptedException from L6 to L7 using L2
.catch java/lang/RuntimeException from L6 to L7 using L3
.catch all from L6 to L7 using L4
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch java/lang/RuntimeException from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/RuntimeException from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch all from L11 to L12 using L4
.catch com/common/android/utils/http/HttpException from L13 to L14 using L15
.catch java/lang/InterruptedException from L13 to L14 using L2
.catch java/lang/RuntimeException from L13 to L14 using L3
.catch all from L13 to L14 using L4
.catch java/lang/InterruptedException from L16 to L17 using L2
.catch java/lang/RuntimeException from L16 to L17 using L3
.catch all from L16 to L17 using L4
.catch all from L18 to L19 using L4
.catch java/lang/InterruptedException from L20 to L21 using L2
.catch java/lang/RuntimeException from L20 to L21 using L3
.catch all from L20 to L21 using L4
L22:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
ifne L23
aload 0
iconst_0
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
ldc2_w 50L
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/BlockingQueue/poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object; 3
checkcast com/nd/android/u/cloud/cache/CornerMark
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
astore 1
L1:
aload 1
ifnonnull L5
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 1
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRESH_APP_LIST"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L22
aload 0
iconst_1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
goto L22
L5:
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$200()Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L9
aload 0
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$200()Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
L6:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
ifnull L7
ldc ""
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L20
L7:
aload 0
iconst_0
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
L8:
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 1
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRESH_APP_LIST"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L22
aload 0
iconst_1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
goto L22
L9:
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
bipush 15
if_icmpne L13
ldc "1011"
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
aload 0
ldc "https://desk.oa.99.com/notice/unread_num?sid={SID}&uid={UID}"
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
L10:
goto L6
L2:
astore 1
L11:
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
L12:
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 1
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRESH_APP_LIST"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L22
aload 0
iconst_1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
goto L22
L13:
aload 0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppMsgUrl(ILjava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
L14:
goto L6
L15:
astore 1
L16:
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L17:
goto L6
L3:
astore 1
L18:
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
L19:
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 1
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRESH_APP_LIST"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L22
aload 0
iconst_1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
goto L22
L20:
aload 0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/url Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppMsgCount(Ljava/lang/String;ILjava/lang/String;)I
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
L21:
goto L8
L4:
astore 1
new com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params
dup
aconst_null
invokespecial com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/<init>(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$1;)V
astore 2
aload 2
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/cm Lcom/nd/android/u/cloud/cache/CornerMark;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$402(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;Lcom/nd/android/u/cloud/cache/CornerMark;)Lcom/nd/android/u/cloud/cache/CornerMark;
pop
aload 2
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/count I
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params/access$502(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager$Params;I)I
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 2
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "FRESH_APP_LIST"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/this$0 Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/access$100(Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L24
aload 0
iconst_1
putfield com/nd/android/u/cloud/cache/AppCornerMarkCacheManager$GetUserTask/mTaskTerminated Z
L24:
aload 1
athrow
L23:
return
.limit locals 3
.limit stack 5
.end method
