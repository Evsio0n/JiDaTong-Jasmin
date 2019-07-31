.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/showBindSinaHint()V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
ldc com/android/u/weibo/weibo/ui/activity/BindWeibo
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 1
bipush 104
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method
