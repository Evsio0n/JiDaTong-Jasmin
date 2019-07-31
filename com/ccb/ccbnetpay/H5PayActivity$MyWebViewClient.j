.bytecode 50.0
.class synchronized com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient
.super android/webkit/WebViewClient
.inner class private MyWebViewClient inner com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient outer com/ccb/ccbnetpay/H5PayActivity

.field 'altDialog' Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;

.field final synthetic 'this$0' Lcom/ccb/ccbnetpay/H5PayActivity;

.method private <init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
aload 0
aload 1
putfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/altDialog Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/ccb/ccbnetpay/H5PayActivity;Lcom/ccb/ccbnetpay/H5PayActivity$MyWebViewClient;)V
aload 0
aload 1
invokespecial com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
ldc "---pageFinished---"
new java/lang/StringBuilder
dup
ldc "---pageFinished---"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
ldc "---pageStart---"
new java/lang/StringBuilder
dup
ldc "create dialog..."
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
ldc "---receivedError---"
ldc "\u9875\u9762\u52a0\u8f7d\u6709\u8bef"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$2(Lcom/ccb/ccbnetpay/H5PayActivity;)Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/disDialog()V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/altDialog Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
ifnonnull L0
aload 0
new com/ccb/ccbnetpay/dialog/CCBAlertDialog
dup
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokespecial com/ccb/ccbnetpay/dialog/CCBAlertDialog/<init>(Landroid/content/Context;Landroid/app/Activity;)V
putfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/altDialog Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
L0:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/altDialog Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
aload 3
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/createDialog(Ljava/lang/String;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/altDialog Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/showDialog()V
return
.limit locals 5
.limit stack 5
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
ldc "---H5\u8df3\u8f6c\u8def\u5f84---"
aload 2
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ldc "mbspay:"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
ldc "---shouldOverrideUrlLoading---"
ldc "true"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
ireturn
L0:
ldc "---shouldOverrideUrlLoading---"
ldc "false"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
