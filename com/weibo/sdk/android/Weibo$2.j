.bytecode 50.0
.class synchronized com/weibo/sdk/android/Weibo$2
.super java/lang/Object
.implements com/weibo/sdk/android/WeiboAuthListener
.enclosing method com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
.inner class inner com/weibo/sdk/android/Weibo$2

.field final synthetic 'this$0' Lcom/weibo/sdk/android/Weibo;

.field private final synthetic 'val$listener' Lcom/weibo/sdk/android/WeiboAuthListener;

.field private final synthetic 'val$type' I

.method <init>(Lcom/weibo/sdk/android/Weibo;ILcom/weibo/sdk/android/WeiboAuthListener;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Weibo$2/this$0 Lcom/weibo/sdk/android/Weibo;
aload 0
iload 2
putfield com/weibo/sdk/android/Weibo$2/val$type I
aload 0
aload 3
putfield com/weibo/sdk/android/Weibo$2/val$listener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onCancel()V
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$listener Lcom/weibo/sdk/android/WeiboAuthListener;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onCancel()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public onComplete(Landroid/os/Bundle;)V
invokestatic android/webkit/CookieSyncManager/getInstance()Landroid/webkit/CookieSyncManager;
invokevirtual android/webkit/CookieSyncManager/sync()V
aload 1
ldc "code"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
iconst_1
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$type I
if_icmpne L0
aload 0
getfield com/weibo/sdk/android/Weibo$2/this$0 Lcom/weibo/sdk/android/Weibo;
aload 2
invokestatic com/weibo/sdk/android/Weibo/access$1(Lcom/weibo/sdk/android/Weibo;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$type I
ifne L1
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$listener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onComplete(Landroid/os/Bundle;)V 1
return
.limit locals 3
.limit stack 2
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$listener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onError(Lcom/weibo/sdk/android/WeiboDialogError;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
aload 0
getfield com/weibo/sdk/android/Weibo$2/val$listener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
return
.limit locals 2
.limit stack 2
.end method
