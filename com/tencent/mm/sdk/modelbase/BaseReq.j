.bytecode 50.0
.class public synchronized abstract com/tencent/mm/sdk/modelbase/BaseReq
.super java/lang/Object

.field public 'openId' Ljava/lang/String;

.field public 'transaction' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_basereq_transaction"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelbase/BaseReq/transaction Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_basereq_openid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelbase/BaseReq/openId Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_command_type"
aload 0
invokevirtual com/tencent/mm/sdk/modelbase/BaseReq/getType()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_wxapi_basereq_transaction"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseReq/transaction Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_basereq_openid"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseReq/openId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
