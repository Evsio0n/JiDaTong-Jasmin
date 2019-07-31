.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelpay/PayResp
.super com/tencent/mm/sdk/modelbase/BaseResp

.field public 'extData' Ljava/lang/String;

.field public 'prepayId' Ljava/lang/String;

.field public 'returnKey' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
aload 0
aload 1
invokevirtual com/tencent/mm/sdk/modelpay/PayResp/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_payresp_prepayid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayResp/prepayId Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payresp_returnkey"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayResp/returnKey Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payresp_extdata"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayResp/extData Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public getType()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_payresp_prepayid"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayResp/prepayId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payresp_returnkey"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayResp/returnKey Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payresp_extdata"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayResp/extData Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
