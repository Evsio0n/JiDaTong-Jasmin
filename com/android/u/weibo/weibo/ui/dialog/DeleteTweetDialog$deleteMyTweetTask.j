.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
.inner class private deleteMyTweetTask inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;

.method private <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 1
L0:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/tweetId J
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/sinaId J
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isOnlySina Z
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback
dup
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aconst_null
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1;)V
invokevirtual com/android/u/weibo/weibo/controller/Manager/delTweet(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L1:
aconst_null
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
checkcast android/app/Activity
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask;Ljava/lang/String;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 10
.end method
