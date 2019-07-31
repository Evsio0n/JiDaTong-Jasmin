.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.inner class private deleteMyTweetTask inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask;

.field final synthetic 'val$msg' Ljava/lang/String;

.method <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask;Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1/this$1 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1/val$msg Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1/val$msg Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1/val$msg Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L0:
getstatic com/android/u/weibo/R$string/delete_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 1
.limit stack 1
.end method
