.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
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
ifnull L0
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L0
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast java/util/ArrayList
astore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iconst_0
aload 1
invokeinterface java/util/List/addAll(ILjava/util/Collection;)Z 2
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 1
invokevirtual java/util/ArrayList/size()I
iconst_0
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;IZ)V
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/onRefreshComplete()V
return
.limit locals 3
.limit stack 3
.end method
