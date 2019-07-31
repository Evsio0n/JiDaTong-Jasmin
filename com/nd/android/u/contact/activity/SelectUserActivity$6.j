.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectUserActivity$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SelectUserActivity
.inner class inner com/nd/android/u/contact/activity/SelectUserActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
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
checkcast com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask
astore 1
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1100(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1202(Lcom/nd/android/u/contact/activity/SelectUserActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1308(Lcom/nd/android/u/contact/activity/SelectUserActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1400(Lcom/nd/android/u/contact/activity/SelectUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1500(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1500(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 500
if_icmplt L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1700(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1600(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/getTempTotal()I
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1402(Lcom/nd/android/u/contact/activity/SelectUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1400(Lcom/nd/android/u/contact/activity/SelectUserActivity;)I
bipush 20
if_icmple L3
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1700(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1600(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1700(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1100(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$6/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$1202(Lcom/nd/android/u/contact/activity/SelectUserActivity;Z)Z
pop
return
.limit locals 3
.limit stack 2
.end method
