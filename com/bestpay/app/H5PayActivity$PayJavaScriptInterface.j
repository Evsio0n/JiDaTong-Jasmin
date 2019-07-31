.bytecode 50.0
.class public synchronized com/bestpay/app/H5PayActivity$PayJavaScriptInterface
.super java/lang/Object
.inner class public PayJavaScriptInterface inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$2
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$4

.field final synthetic 'this$0' Lcom/bestpay/app/H5PayActivity;

.method <init>(Lcom/bestpay/app/H5PayActivity;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public callResult(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
ldc "TAG"
new java/lang/StringBuilder
dup
ldc "callResult:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
ldc com/bestpay/db/ResultInfo
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/bestpay/db/ResultInfo
astore 1
aload 2
ldc "result"
aload 1
invokevirtual com/bestpay/db/ResultInfo/getResult()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
aload 1
invokevirtual com/bestpay/db/ResultInfo/getResultCode()I
aload 2
invokevirtual com/bestpay/app/H5PayActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokevirtual com/bestpay/app/H5PayActivity/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method public callback(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
aload 1
putfield com/bestpay/app/H5PayActivity/jsonTo Ljava/lang/String;
ldc "TAG"
new java/lang/StringBuilder
dup
ldc "callback:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e?"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u662f"
new com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1/<init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u5426"
new com/bestpay/app/H5PayActivity$PayJavaScriptInterface$2
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$PayJavaScriptInterface$2/<init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public cancel()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e?"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u662f"
new com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3/<init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u5426"
new com/bestpay/app/H5PayActivity$PayJavaScriptInterface$4
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$PayJavaScriptInterface$4/<init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public cancel_error()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokevirtual com/bestpay/app/H5PayActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public goback()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
return
.limit locals 1
.limit stack 1
.end method

.method public saveAccount(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 1
invokestatic com/bestpay/util/JsonUtils/jsonToAccount(Ljava/lang/String;)Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
return
L2:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bestpay/db/AccountInfo
astore 2
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$0(Lcom/bestpay/app/H5PayActivity;)Landroid/content/Context;
invokestatic com/bestpay/db/BestPayDao/getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;
aload 2
invokevirtual com/bestpay/db/BestPayDao/uptOrInsert(Lcom/bestpay/db/AccountInfo;)V
goto L1
.limit locals 3
.limit stack 2
.end method
