.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListActivity$4
.super android/os/Handler
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListActivity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$000(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
goto L3
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/view/View;
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/removeFooterView(Landroid/view/View;)Z
pop
goto L3
L2:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/task/RafflesList;)V
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$302(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/setAdapter(Landroid/widget/ListAdapter;)V
goto L3
.limit locals 2
.limit stack 5
.end method
