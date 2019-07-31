.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListActivity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/myHandler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
iadd
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$702(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
ifne L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_msg Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_listview Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
return
L2:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_msg Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_listview Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
if_icmplt L4
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
if_icmpne L5
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
if_icmpne L5
L4:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/task/RafflesList;)V
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$302(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/setAdapter(Landroid/widget/ListAdapter;)V
L6:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
if_icmpge L3
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/myHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L5:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/loadMore(Lcom/product/android/commonInterface/task/RafflesList;)V
goto L6
L1:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L7
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
ldc "\u7f51\u7edc\u5f02\u5e38"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L7:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
ldc "\u7f51\u7edc\u901a\u4fe1\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
ldc ""
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
getstatic com/nd/android/u/tasklib/R$string/lot_get_data_waiting I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$902(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method
