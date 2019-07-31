.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectGiftUserActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SelectGiftUserActivity
.inner class inner com/nd/android/u/contact/activity/SelectGiftUserActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
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
checkcast com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask
astore 1
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$000(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$102(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$208(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$300(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$400(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$400(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 500
if_icmplt L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$600(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$500(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity$SearchUserTask/getTempTotal()I
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$302(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$300(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
bipush 20
if_icmple L3
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$600(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$500(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$600(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$700(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$000(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$102(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;Z)Z
pop
return
.limit locals 3
.limit stack 2
.end method
