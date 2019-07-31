.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/senior/FindSeniorActivity/onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/onLoadFinish()V
return
.limit locals 1
.limit stack 1
.end method
