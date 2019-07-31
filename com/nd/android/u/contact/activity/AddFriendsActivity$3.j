.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$3
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/AddFriendsActivity
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$3/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
iconst_1
aload 1
getfield android/os/Message/what I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$3/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$200(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$3/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$3/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
getstatic com/nd/android/u/contact/R$string/try_search_result_again I
invokevirtual com/nd/android/u/contact/activity/AddFriendsActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$300(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
