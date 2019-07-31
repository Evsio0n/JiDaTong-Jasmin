.bytecode 50.0
.class public synchronized abstract com/tencent/mm/sdk/modelbase/BaseResp
.super java/lang/Object
.inner class public static abstract interface ErrCode inner com/tencent/mm/sdk/modelbase/BaseResp$ErrCode outer com/tencent/mm/sdk/modelbase/BaseResp

.field public 'errCode' I

.field public 'errStr' Ljava/lang/String;

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
ldc "_wxapi_baseresp_errcode"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/tencent/mm/sdk/modelbase/BaseResp/errCode I
aload 0
aload 1
ldc "_wxapi_baseresp_errstr"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelbase/BaseResp/errStr Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_baseresp_transaction"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelbase/BaseResp/transaction Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_baseresp_openId"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelbase/BaseResp/openId Ljava/lang/String;
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
invokevirtual com/tencent/mm/sdk/modelbase/BaseResp/getType()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_wxapi_baseresp_errcode"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseResp/errCode I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_wxapi_baseresp_errstr"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseResp/errStr Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_baseresp_transaction"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseResp/transaction Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_baseresp_openId"
aload 0
getfield com/tencent/mm/sdk/modelbase/BaseResp/openId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
