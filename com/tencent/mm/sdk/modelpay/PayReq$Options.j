.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelpay/PayReq$Options
.super java/lang/Object
.inner class public static Options inner com/tencent/mm/sdk/modelpay/PayReq$Options outer com/tencent/mm/sdk/modelpay/PayReq

.field public static final 'INVALID_FLAGS' I = -1


.field public 'callbackClassName' Ljava/lang/String;

.field public 'callbackFlags' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/tencent/mm/sdk/modelpay/PayReq$Options/callbackFlags I
return
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_payoptions_callback_classname"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelpay/PayReq$Options/callbackClassName Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_payoptions_callback_flags"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/tencent/mm/sdk/modelpay/PayReq$Options/callbackFlags I
return
.limit locals 2
.limit stack 4
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_payoptions_callback_classname"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq$Options/callbackClassName Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_payoptions_callback_flags"
aload 0
getfield com/tencent/mm/sdk/modelpay/PayReq$Options/callbackFlags I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method
