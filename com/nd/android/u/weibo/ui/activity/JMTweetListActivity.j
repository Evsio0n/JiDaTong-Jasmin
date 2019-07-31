.bytecode 50.0
.class public synchronized com/nd/android/u/weibo/ui/activity/JMTweetListActivity
.super com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/weibo/ui/activity/JMTweetListActivity/mTestBtn Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/weibo/ui/activity/JMTweetListActivity/mTestBtn Landroid/view/View;
aconst_null
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
