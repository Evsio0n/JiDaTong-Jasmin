.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoScreeningActivty$2
.super android/content/BroadcastReceiver
.enclosing method com/nd/android/u/contact/activity/PhotoScreeningActivty
.inner class inner com/nd/android/u/contact/activity/PhotoScreeningActivty$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty$2/this$0 Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 2
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
aload 1
ldc "unitid"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
aload 1
ldc "departid"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
aload 1
ldc "nodename"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setUnitParam(IILjava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty$2/this$0 Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/initComponentValue()V
return
.limit locals 3
.limit stack 5
.end method
