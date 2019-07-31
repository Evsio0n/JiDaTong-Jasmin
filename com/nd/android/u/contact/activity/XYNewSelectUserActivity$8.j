.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$8
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$8

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
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
checkcast com/nd/android/u/contact/activity/XYNewSelectUserActivity$SearchUserTask
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1300(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1402(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1508(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1600(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1700(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1700(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 500
if_icmplt L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1900(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1800(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity$SearchUserTask/getTempTotal()I
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1602(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1600(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)I
bipush 20
if_icmple L3
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1900(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1800(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1900(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$800(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1300(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$8/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1402(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Z)Z
pop
return
.limit locals 3
.limit stack 2
.end method
