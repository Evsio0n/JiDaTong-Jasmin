.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/app/H5PayActivity$PayJavaScriptInterface/callback(Ljava/lang/String;)V
.inner class public PayJavaScriptInterface inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1

.field final synthetic 'this$1' Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

.method <init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
getfield com/bestpay/app/H5PayActivity/jsonTo Ljava/lang/String;
ldc com/bestpay/db/ResultInfo
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/bestpay/db/ResultInfo
astore 3
ldc "TAg"
new java/lang/StringBuilder
dup
ldc "\u70b9\u51fb\u8fd4\u56de"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual com/bestpay/db/ResultInfo/getResult()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ldc "result"
aload 3
invokevirtual com/bestpay/db/ResultInfo/getResult()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
aload 3
invokevirtual com/bestpay/db/ResultInfo/getResultCode()I
aload 1
invokevirtual com/bestpay/app/H5PayActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1/this$1 Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
invokestatic com/bestpay/app/H5PayActivity$PayJavaScriptInterface/access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
invokevirtual com/bestpay/app/H5PayActivity/finish()V
return
.limit locals 4
.limit stack 4
.end method
