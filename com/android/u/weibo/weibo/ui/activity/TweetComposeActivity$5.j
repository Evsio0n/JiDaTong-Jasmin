.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/onActivityResult(IILandroid/content/Intent;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/ScrollView;
sipush 130
invokevirtual android/widget/ScrollView/fullScroll(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
