.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setListener()V
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;

.method <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1/this$0 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
