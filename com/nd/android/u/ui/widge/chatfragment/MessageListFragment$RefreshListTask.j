.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private RefreshListTask inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask outer com/nd/android/u/ui/widge/chatfragment/MessageListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method private <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getFirstMessageId()J 0
lstore 2
lload 2
lconst_0
lcmp
ifle L0
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
lload 2
bipush 10
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getData(JI)Ljava/util/List; 3
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 5
.end method
