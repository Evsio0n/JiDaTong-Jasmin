.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;

.method private <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
checkcast android/app/Activity
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1
dup
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback;I)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
iload 1
sipush 1005
if_icmpne L0
new android/content/Intent
dup
ldc "like-event"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "afterDelete2Refresh"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "deleteTweetId"
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/tweetId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isFromMsgPraiselsit Z
ifeq L1
new android/content/Intent
dup
ldc "wb_wsg_delete_tweet"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "deleteTweetId"
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/tweetId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 2
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
checkcast android/app/Activity
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$2
dup
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$2/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback;I)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 5
.end method
