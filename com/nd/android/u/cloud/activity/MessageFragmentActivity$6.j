.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$6
.super java/lang/Object
.implements com/nd/android/u/contact/listener/ContactObserver
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onContactStateChange()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;)V
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onReceiverNewContact(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;I)V
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method
