.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
.inner class inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
ifne L1
L2:
return
L1:
ldc "public"
ldc "get from server ok"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
istore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$202(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$200(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/getMenuBottons()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L3
iconst_1
istore 4
iload 4
istore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$300(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
ifnull L3
iload 4
istore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$400(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/isAdded()Z
ifeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$500(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$200(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/getMenuBottons()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showMenuByList(Ljava/util/ArrayList;)V
iload 4
istore 3
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$600(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
ifnull L4
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$700(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAdded()Z
ifeq L4
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$800(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
iload 3
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/refreshFootView(Z)V
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$900(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$900(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$900(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
return
L0:
ldc "public"
ldc "get from server fail"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L4
.limit locals 5
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 0
.end method
