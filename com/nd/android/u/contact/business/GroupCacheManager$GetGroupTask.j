.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask
.super java/lang/Thread
.inner class private GetGroupTask inner com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask outer com/nd/android/u/contact/business/GroupCacheManager

.field private static final 'TIMEOUT' I = 5


.field 'gid' J

.field 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field 'groupItem' Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;

.field private volatile 'mTaskTerminated' Z

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/GroupCacheManager;

.method private <init>(Lcom/nd/android/u/contact/business/GroupCacheManager;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
aload 0
aconst_null
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/business/GroupCacheManager;Lcom/nd/android/u/contact/business/GroupCacheManager$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch com/common/android/utils/http/HttpAuthException from L5 to L6 using L7
.catch com/common/android/utils/http/HttpException from L5 to L6 using L8
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/RuntimeException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L7
.catch com/common/android/utils/http/HttpException from L9 to L10 using L8
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/RuntimeException from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/lang/InterruptedException from L10 to L11 using L2
.catch java/lang/RuntimeException from L10 to L11 using L3
.catch all from L10 to L11 using L4
.catch com/common/android/utils/http/HttpException from L12 to L13 using L14
.catch java/lang/InterruptedException from L12 to L13 using L2
.catch java/lang/RuntimeException from L12 to L13 using L3
.catch all from L12 to L13 using L4
.catch com/common/android/utils/http/HttpException from L15 to L16 using L14
.catch java/lang/InterruptedException from L15 to L16 using L2
.catch java/lang/RuntimeException from L15 to L16 using L3
.catch all from L15 to L16 using L4
.catch com/common/android/utils/http/HttpException from L17 to L18 using L14
.catch java/lang/InterruptedException from L17 to L18 using L2
.catch java/lang/RuntimeException from L17 to L18 using L3
.catch all from L17 to L18 using L4
.catch com/common/android/utils/http/HttpException from L19 to L20 using L14
.catch java/lang/InterruptedException from L19 to L20 using L2
.catch java/lang/RuntimeException from L19 to L20 using L3
.catch all from L19 to L20 using L4
.catch java/lang/InterruptedException from L21 to L22 using L2
.catch java/lang/RuntimeException from L21 to L22 using L3
.catch all from L21 to L22 using L4
.catch all from L23 to L24 using L4
.catch java/lang/InterruptedException from L25 to L26 using L2
.catch java/lang/RuntimeException from L25 to L26 using L3
.catch all from L25 to L26 using L4
.catch all from L27 to L28 using L4
.catch com/common/android/utils/http/HttpException from L29 to L30 using L31
.catch java/lang/InterruptedException from L29 to L30 using L2
.catch java/lang/RuntimeException from L29 to L30 using L3
.catch all from L29 to L30 using L4
.catch com/common/android/utils/http/HttpException from L32 to L33 using L31
.catch java/lang/InterruptedException from L32 to L33 using L2
.catch java/lang/RuntimeException from L32 to L33 using L3
.catch all from L32 to L33 using L4
.catch com/common/android/utils/http/HttpException from L33 to L34 using L31
.catch java/lang/InterruptedException from L33 to L34 using L2
.catch java/lang/RuntimeException from L33 to L34 using L3
.catch all from L33 to L34 using L4
.catch java/lang/InterruptedException from L35 to L36 using L2
.catch java/lang/RuntimeException from L35 to L36 using L3
.catch all from L35 to L36 using L4
L37:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
ifne L38
L0:
aload 0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
ldc2_w 5L
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/BlockingQueue/poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object; 3
checkcast com/nd/android/u/contact/business/GroupCacheManager$GroupItem
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/groupItem Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/groupItem Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;
ifnull L39
aload 0
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/groupItem Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/gid J
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/groupItem Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
istore 1
L1:
iload 1
ifne L29
L5:
aload 0
new com/product/android/commonInterface/contact/OapGroup
dup
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupInfo(J)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
L6:
lload 2
lconst_0
lcmp
ifne L9
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L39:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L9:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L10:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$200(Lcom/nd/android/u/contact/business/GroupCacheManager;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 4
aload 4
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 5
aload 5
ldc "extra_user_fid"
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 5
ldc "extra_grouptype"
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/groupItem Lcom/nd/android/u/contact/business/GroupCacheManager$GroupItem;
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
ldc "extra_user"
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$200(Lcom/nd/android/u/contact/business/GroupCacheManager;)Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L11:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L7:
astore 4
L12:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aconst_null
iconst_0
iconst_1
invokevirtual com/nd/android/u/contact/com/OapGroupCom/search(Ljava/lang/String;ILjava/lang/String;II)Lorg/json/JSONObject;
astore 4
L13:
aload 4
ifnull L10
L15:
aload 4
ldc "groups"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
L16:
aload 4
ifnull L10
L17:
aload 4
invokevirtual org/json/JSONArray/length()I
ifle L10
aload 0
new com/product/android/commonInterface/contact/OapGroup
dup
aload 4
iconst_0
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
L18:
lload 2
lconst_0
lcmp
ifne L19
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L19:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L20:
goto L10
L14:
astore 4
L21:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L22:
goto L10
L2:
astore 4
L23:
aload 4
invokevirtual java/lang/InterruptedException/printStackTrace()V
L24:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L8:
astore 4
L25:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L26:
goto L10
L3:
astore 4
L27:
aload 4
invokevirtual java/lang/RuntimeException/printStackTrace()V
L28:
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L37
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
goto L37
L29:
new com/nd/android/u/contact/com/OapDiscussionCom
dup
invokespecial com/nd/android/u/contact/com/OapDiscussionCom/<init>()V
astore 4
aload 0
aload 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/gid J
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionMemberList(J)Ljava/util/ArrayList;
astore 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
L30:
aload 4
ifnull L10
L32:
aload 4
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 4
L33:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 5
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
L34:
goto L33
L31:
astore 4
L35:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L36:
goto L10
L4:
astore 4
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$100(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/concurrent/BlockingQueue;
invokeinterface java/util/concurrent/BlockingQueue/size()I 0
ifgt L40
aload 0
iconst_1
putfield com/nd/android/u/contact/business/GroupCacheManager$GetGroupTask/mTaskTerminated Z
L40:
aload 4
athrow
L38:
return
.limit locals 6
.limit stack 6
.end method
