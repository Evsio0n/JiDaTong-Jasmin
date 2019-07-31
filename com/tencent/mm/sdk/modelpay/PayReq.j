.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelpay/PayReq
.super com/tencent/mm/sdk/modelbase/BaseReq
.inner class public static Options inner com/tencent/mm/sdk/modelpay/PayReq$Options outer com/tencent/mm/sdk/modelpay/PayReq

.field private static final 'EXTDATA_MAX_LENGTH' I = 1024


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.PaySdk.PayReq"

.field public 'appId' Ljava/lang/String;

.field public 'extData' Ljava/lang/String;

.field public 'nonceStr' Ljava/lang/String;

.field public 'options' Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

.field public 'packageValue' Ljava/lang/String;

.field public 'partnerId' Ljava/lang/String;

.field public 'prepayId' Ljava/lang/String;

.field public 'sign' Ljava/lang/String;

.field public 'timeStamp' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/appId Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/appId Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L0:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid appId"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/partnerId Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/partnerId Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L3
L2:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid partnerId"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/prepayId Ljava/lang/String;
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/prepayId Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L5
L4:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid prepayId"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/nonceStr Ljava/lang/String;
ifnull L6
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/nonceStr Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L7
L6:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid nonceStr"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/timeStamp Ljava/lang/String;
ifnull L8
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/timeStamp Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L9
L8:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid timeStamp"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L9:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/packageValue Ljava/lang/String;
ifnull L10
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/packageValue Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L11
L10:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid packageValue"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L11:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/sign Ljava/lang/String;
ifnull L12
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/sign Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L13
L12:
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, invalid sign"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L13:
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/extData Ljava/lang/String;
ifnull L14
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/extData Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L14
ldc "MicroMsg.PaySdk.PayReq"
ldc "checkArgs fail, extData length too long"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L14:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_payreq_appid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/appId Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_partnerid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/partnerId Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_prepayid"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/prepayId Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_noncestr"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/nonceStr Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_timestamp"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/timeStamp Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_packagevalue"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/packageValue Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_sign"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/sign Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payreq_extdata"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq/extData Ljava/lang/String;
aload 0
new com/tencent/mm/sdk/modelpay/PayReq$Options
dup
invokespecial com/tencent/mm/sdk/modelpay/PayReq$Options/<init>()V
putfield com/tencent/mm/sdk/modelpay/PayReq/options Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/options Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
aload 1
invokevirtual com/tencent/mm/sdk/modelpay/PayReq$Options/fromBundle(Landroid/os/Bundle;)V
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
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_payreq_appid"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/appId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_partnerid"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/partnerId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_prepayid"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/prepayId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_noncestr"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/nonceStr Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_timestamp"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/timeStamp Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_packagevalue"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/packageValue Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_sign"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/sign Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payreq_extdata"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/extData Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/options Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq/options Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
aload 1
invokevirtual com/tencent/mm/sdk/modelpay/PayReq$Options/toBundle(Landroid/os/Bundle;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
