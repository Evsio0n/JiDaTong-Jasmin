.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$1
.super android/content/BroadcastReceiver
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
getstatic com/nd/android/util/BroadcastContact/GOTO_CONTACT_ACTION Ljava/lang/String;
aload 2
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc ""
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$000(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
