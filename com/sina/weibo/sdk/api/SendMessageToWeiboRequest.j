.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/SendMessageToWeiboRequest
.super com/sina/weibo/sdk/api/BaseRequest

.field public 'message' Lcom/sina/weibo/sdk/api/WeiboMessage;

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseRequest/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseRequest/<init>()V
aload 0
aload 1
invokevirtual com/sina/weibo/sdk/api/SendMessageToWeiboRequest/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method final check()Z
aload 0
getfield com/sina/weibo/sdk/api/SendMessageToWeiboRequest/message Lcom/sina/weibo/sdk/api/WeiboMessage;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/sina/weibo/sdk/api/SendMessageToWeiboRequest/message Lcom/sina/weibo/sdk/api/WeiboMessage;
getfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
ifnonnull L1
ldc "WeiboApiImpl"
ldc "message media is null"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/sina/weibo/sdk/api/SendMessageToWeiboRequest/message Lcom/sina/weibo/sdk/api/WeiboMessage;
invokevirtual com/sina/weibo/sdk/api/WeiboMessage/checkArgs()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseRequest/fromBundle(Landroid/os/Bundle;)V
aload 0
new com/sina/weibo/sdk/api/WeiboMessage
dup
aload 1
invokespecial com/sina/weibo/sdk/api/WeiboMessage/<init>(Landroid/os/Bundle;)V
putfield com/sina/weibo/sdk/api/SendMessageToWeiboRequest/message Lcom/sina/weibo/sdk/api/WeiboMessage;
return
.limit locals 2
.limit stack 4
.end method

.method public getType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseRequest/toBundle(Landroid/os/Bundle;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/SendMessageToWeiboRequest/message Lcom/sina/weibo/sdk/api/WeiboMessage;
aload 1
invokevirtual com/sina/weibo/sdk/api/WeiboMessage/toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
invokevirtual android/os/Bundle/putAll(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method
