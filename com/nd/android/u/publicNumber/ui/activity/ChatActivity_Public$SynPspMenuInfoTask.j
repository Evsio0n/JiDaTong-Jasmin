.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynPspMenuInfoTask inner com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask outer com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;

.method private <init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;
invokestatic com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public/access$100(Lcom/nd/android/u/publicNumber/ui/activity/ChatActivity_Public;)J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMenuFromServer(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo;)Z
ifeq L0
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public$SynPspMenuInfoTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
