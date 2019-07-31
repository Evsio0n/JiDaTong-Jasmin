.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface
.super java/lang/Object
.inner class public MyJavaScriptInterface inner com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface outer com/ccb/ccbnetpay/H5PayActivity

.field final synthetic 'this$0' Lcom/ccb/ccbnetpay/H5PayActivity;

.method public <init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
aload 0
aload 1
putfield com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public sdkCallBack(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
ldc "h5\u8fd4\u56de\u652f\u4ed8\u7ed3\u679c\uff1a"
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$3(Lcom/ccb/ccbnetpay/H5PayActivity;)Ljava/lang/String;
ldc "THIRDAPPINFO="
invokestatic com/ccb/ccbnetpay/util/NetUtil/getKeyWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc_w 402653184
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
ldc "CCBPARAM"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 2
invokevirtual com/ccb/ccbnetpay/H5PayActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokevirtual com/ccb/ccbnetpay/H5PayActivity/finish()V
return
.limit locals 3
.limit stack 3
.end method

.method public showFinish()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
ldc "H5\u652f\u4ed8"
ldc "\u663e\u793a\u5b8c\u6210\u6309\u94ae"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$4(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
