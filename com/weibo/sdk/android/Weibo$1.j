.bytecode 50.0
.class synchronized com/weibo/sdk/android/Weibo$1
.super android/os/Handler
.enclosing method com/weibo/sdk/android/Weibo
.inner class inner com/weibo/sdk/android/Weibo$1

.field final synthetic 'this$0' Lcom/weibo/sdk/android/Weibo;

.method <init>(Lcom/weibo/sdk/android/Weibo;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Weibo$1/this$0 Lcom/weibo/sdk/android/Weibo;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1000
L0
L1
default : L2
L2:
return
L0:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ifnull L3
aload 0
getfield com/weibo/sdk/android/Weibo$1/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onComplete(Landroid/os/Bundle;)V 1
return
L3:
aload 0
getfield com/weibo/sdk/android/Weibo$1/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboException
dup
ldc "Failed to receive access token."
invokespecial com/weibo/sdk/android/WeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
return
L1:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L4
aload 0
getfield com/weibo/sdk/android/Weibo$1/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/weibo/sdk/android/WeiboException
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
L4:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ifnull L2
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "error"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "error_code"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "error_description"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/weibo/sdk/android/Weibo$1/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboException
dup
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial com/weibo/sdk/android/WeiboException/<init>(Ljava/lang/String;I)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
return
.limit locals 4
.limit stack 6
.end method
