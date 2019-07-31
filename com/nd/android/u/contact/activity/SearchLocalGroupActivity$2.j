.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchLocalGroupActivity$2
.super java/util/TimerTask
.enclosing method com/nd/android/u/contact/activity/SearchLocalGroupActivity/onSearchCancel()V
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$2
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$2$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
new com/nd/android/u/contact/activity/SearchLocalGroupActivity$2$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchLocalGroupActivity$2$1/<init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity$2;)V
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method
