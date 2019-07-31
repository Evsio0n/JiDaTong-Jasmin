.bytecode 50.0
.class public final synchronized com/sina/weibo/sdk/api/WeiboMessage
.super java/lang/Object

.field public 'mediaObject' Lcom/sina/weibo/sdk/api/BaseMediaObject;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/sina/weibo/sdk/api/WeiboMessage/toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
ifnonnull L0
ldc "Weibo.WeiboMessage"
ldc "checkArgs fail, mediaObject is null"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
ifnull L1
aload 0
getfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
invokevirtual com/sina/weibo/sdk/api/BaseMediaObject/checkArgs()Z
ifne L1
ldc "Weibo.WeiboMessage"
ldc "checkArgs fail, mediaObject is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
aload 1
ldc "_weibo_message_media"
aload 0
getfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public toObject(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/api/WeiboMessage;
aload 0
aload 1
ldc "_weibo_message_media"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/sina/weibo/sdk/api/BaseMediaObject
putfield com/sina/weibo/sdk/api/WeiboMessage/mediaObject Lcom/sina/weibo/sdk/api/BaseMediaObject;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method
