.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListActivity/setClick()V
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$000(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/initData()V
return
.limit locals 2
.limit stack 2
.end method
