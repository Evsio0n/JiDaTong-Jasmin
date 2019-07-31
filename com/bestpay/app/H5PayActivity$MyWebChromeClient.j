.bytecode 50.0
.class public synchronized com/bestpay/app/H5PayActivity$MyWebChromeClient
.super android/webkit/WebChromeClient
.inner class public MyWebChromeClient inner com/bestpay/app/H5PayActivity$MyWebChromeClient outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$1
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$2
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$3
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$4
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$5
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$6

.field final synthetic 'this$0' Lcom/bestpay/app/H5PayActivity;

.method public <init>(Lcom/bestpay/app/H5PayActivity;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
aload 3
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$1
dup
aload 0
aload 4
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$1/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$2
dup
aload 0
aload 4
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$2/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
iconst_1
ireturn
.limit locals 5
.limit stack 6
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
aload 3
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$3
dup
aload 0
aload 4
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$3/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$4
dup
aload 0
aload 4
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$4/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
iconst_1
ireturn
.limit locals 5
.limit stack 6
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
aload 3
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$5
dup
aload 0
aload 5
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$5/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/app/H5PayActivity$MyWebChromeClient$6
dup
aload 0
aload 5
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient$6/<init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
iconst_1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
iload 2
bipush 100
if_icmpne L0
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
aload 0
aload 1
iload 2
invokespecial android/webkit/WebChromeClient/onProgressChanged(Landroid/webkit/WebView;I)V
return
L0:
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
bipush 8
if_icmpne L2
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L2:
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebChromeClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
iload 2
invokevirtual android/widget/ProgressBar/setProgress(I)V
goto L1
.limit locals 3
.limit stack 3
.end method
