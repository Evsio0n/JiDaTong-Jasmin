.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity$4
.super android/content/BroadcastReceiver
.enclosing method com/nd/android/u/contact/activity/senior/FindSeniorActivity
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$4/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
getstatic com/nd/android/util/BroadcastContact/REFRESH_SENIOR_ACTION Ljava/lang/String;
aload 2
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L0:
return
.limit locals 3
.limit stack 2
.end method
