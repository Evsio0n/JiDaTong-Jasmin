.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity$6/onReceiverNewContact(I)V
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;

.field final synthetic 'val$newContact' I

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1/this$1 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1/val$newContact I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1/val$newContact I
ifle L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1/this$1 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
