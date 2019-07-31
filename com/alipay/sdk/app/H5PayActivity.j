.bytecode 50.0
.class public synchronized com/alipay/sdk/app/H5PayActivity
.super android/app/Activity

.field private 'a' Landroid/webkit/WebView;

.field private 'b' Landroid/webkit/WebViewClient;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public a()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L3
getstatic com/alipay/sdk/app/PayTask/a Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
aload 1
invokevirtual java/lang/Object/notify()V
L1:
aload 1
monitorexit
L4:
return
L3:
astore 2
aload 1
monitorexit
aload 2
athrow
L2:
astore 2
goto L1
.limit locals 3
.limit stack 1
.end method

.method public finish()V
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/a()V
aload 0
invokespecial android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
getfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/alipay/sdk/app/H5PayActivity/b Landroid/webkit/WebViewClient;
checkcast com/alipay/sdk/app/b
invokevirtual com/alipay/sdk/app/b/a()Z
ifeq L1
getstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 1
aload 1
invokevirtual com/alipay/sdk/app/i/a()I
aload 1
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/finish()V
L1:
return
L0:
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
aload 1
invokespecial android/app/Activity/onConfigurationChanged(Landroid/content/res/Configuration;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
L0:
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
aload 2
ldc "url"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic com/alipay/sdk/util/i/b(Ljava/lang/String;)Z
ifne L3
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/finish()V
L1:
return
L3:
aload 2
ldc "cookie"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L4:
aload 0
iconst_1
invokespecial android/app/Activity/requestWindowFeature(I)Z
pop
aload 0
aload 0
aload 1
aload 2
invokestatic com/alipay/sdk/util/i/a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;
putfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
aload 0
new com/alipay/sdk/app/b
dup
aload 0
invokespecial com/alipay/sdk/app/b/<init>(Landroid/app/Activity;)V
putfield com/alipay/sdk/app/H5PayActivity/b Landroid/webkit/WebViewClient;
aload 0
getfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
aload 0
getfield com/alipay/sdk/app/H5PayActivity/b Landroid/webkit/WebViewClient;
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
return
L2:
astore 1
aload 0
invokevirtual com/alipay/sdk/app/H5PayActivity/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method protected onDestroy()V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
ifnull L3
aload 0
getfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/removeAllViews()V
L0:
aload 0
getfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/destroy()V
L1:
aload 0
aconst_null
putfield com/alipay/sdk/app/H5PayActivity/a Landroid/webkit/WebView;
L3:
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method
