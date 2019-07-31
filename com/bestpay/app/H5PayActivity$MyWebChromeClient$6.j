.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$MyWebChromeClient$6
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/app/H5PayActivity$MyWebChromeClient/onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.inner class public MyWebChromeClient inner com/bestpay/app/H5PayActivity$MyWebChromeClient outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$6

.field final synthetic 'this$1' Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

.field private final synthetic 'val$paramJsPromptResult' Landroid/webkit/JsPromptResult;

.method <init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$MyWebChromeClient$6/this$1 Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;
aload 0
aload 2
putfield com/bestpay/app/H5PayActivity$MyWebChromeClient$6/val$paramJsPromptResult Landroid/webkit/JsPromptResult;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient$6/val$paramJsPromptResult Landroid/webkit/JsPromptResult;
invokevirtual android/webkit/JsPromptResult/cancel()V
return
.limit locals 3
.limit stack 1
.end method
