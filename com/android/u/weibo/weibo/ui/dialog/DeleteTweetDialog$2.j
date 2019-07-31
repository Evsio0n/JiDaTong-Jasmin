.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setListener()V
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;

.method <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
invokestatic com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L0:
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aconst_null
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 4
.end method
