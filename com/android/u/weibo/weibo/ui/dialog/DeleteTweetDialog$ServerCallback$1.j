.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback/onComplete(ILjava/lang/Object;Ljava/lang/String;)V
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback;

.field final synthetic 'val$BusinessID' I

.method <init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1/this$1 Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1/val$BusinessID I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1/val$BusinessID I
sipush 1005
if_icmpne L0
getstatic com/android/u/weibo/R$string/delete_succes I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
