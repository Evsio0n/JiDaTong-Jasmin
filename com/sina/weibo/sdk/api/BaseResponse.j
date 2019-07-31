.bytecode 50.0
.class public synchronized abstract com/sina/weibo/sdk/api/BaseResponse
.super com/sina/weibo/sdk/api/Base

.field public 'errCode' I

.field public 'errMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/Base/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_weibo_resp_errcode"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/sina/weibo/sdk/api/BaseResponse/errCode I
aload 0
aload 1
ldc "_weibo_resp_errstr"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseResponse/errMsg Ljava/lang/String;
aload 0
aload 1
ldc "_weibo_transaction"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/sina/weibo/sdk/api/BaseResponse/transaction Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_weibo_command_type"
aload 0
invokevirtual com/sina/weibo/sdk/api/BaseResponse/getType()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_weibo_resp_errcode"
aload 0
getfield com/sina/weibo/sdk/api/BaseResponse/errCode I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_weibo_resp_errstr"
aload 0
getfield com/sina/weibo/sdk/api/BaseResponse/errMsg Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_weibo_transaction"
aload 0
getfield com/sina/weibo/sdk/api/BaseResponse/transaction Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
