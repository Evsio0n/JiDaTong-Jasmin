.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$4
.super java/util/TimerTask
.enclosing method com/nd/android/u/contact/activity/base/BaseSearchActivity/onSearchCancel()V
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;

.method <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$4/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
new com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$4;)V
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method
