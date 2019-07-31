.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class doGetGlanceCountTask inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask outer com/android/u/weibo/weibo/ui/activity/CommentListActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/Exception from L7 to L8 using L4
.catch java/lang/Exception from L9 to L10 using L4
.catch java/lang/Exception from L11 to L12 using L4
.catch java/lang/Exception from L13 to L14 using L4
.catch java/lang/Exception from L14 to L15 using L4
.catch java/lang/Exception from L16 to L17 using L4
.catch java/lang/Exception from L17 to L18 using L4
aload 1
ifnull L19
L0:
aload 1
iconst_0
aaload
ldc "tid"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getLong(Ljava/lang/String;)J
lstore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L1:
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getTallys(Ljava/util/ArrayList;)Ljava/util/HashMap;
astore 1
L3:
aload 1
ifnull L20
iconst_0
istore 2
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/glances I
if_icmpeq L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/glances I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
L6:
iconst_1
istore 2
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/forwards I
if_icmpeq L9
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/forwards I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
L8:
iconst_1
istore 2
L9:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/replys I
if_icmpeq L11
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/replys I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
L10:
iconst_1
istore 2
L11:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/praises I
if_icmpeq L14
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/praises I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
L12:
iconst_1
istore 2
L13:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2302(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
L14:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
istore 5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 1
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Tally
getfield com/android/u/weibo/weibo/business/bean/Tally/praised I
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfo/setPraised(I)V
iload 5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
if_icmpeq L21
L15:
iconst_1
istore 5
goto L22
L16:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
lload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
iload 5
aconst_null
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
L17:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L18:
aload 1
areturn
L21:
iconst_0
istore 5
goto L22
L2:
astore 1
L23:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L19:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
astore 1
goto L23
L20:
goto L19
L22:
iload 2
ifne L16
iload 5
ifeq L17
goto L16
.limit locals 6
.limit stack 9
.end method
