.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.method <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
invokevirtual com/nd/android/u/tast/TaskGlobalVariable/getCustomerUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toChatActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
