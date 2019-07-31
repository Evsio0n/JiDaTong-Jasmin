.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/AuthActivity$b
.super android/webkit/WebViewClient
.inner class private final b inner com/alipay/sdk/auth/AuthActivity$b outer com/alipay/sdk/auth/AuthActivity

.field final synthetic 'a' Lcom/alipay/sdk/auth/AuthActivity;

.method private <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
aload 0
aload 1
invokespecial com/alipay/sdk/auth/AuthActivity$b/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/g(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/d(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;
ldc2_w 30000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
aload 0
aload 1
aload 2
aload 3
invokespecial android/webkit/WebViewClient/onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return
.limit locals 4
.limit stack 4
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/a(Lcom/alipay/sdk/auth/AuthActivity;)Z
pop
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial android/webkit/WebViewClient/onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
invokestatic com/alipay/sdk/auth/AuthActivity/b(Lcom/alipay/sdk/auth/AuthActivity;)Z
ifeq L0
aload 2
invokevirtual android/webkit/SslErrorHandler/proceed()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
iconst_0
invokestatic com/alipay/sdk/auth/AuthActivity/a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
pop
return
L0:
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
new com/alipay/sdk/auth/e
dup
aload 0
aload 2
invokespecial com/alipay/sdk/auth/e/<init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V
invokevirtual com/alipay/sdk/auth/AuthActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 4
.limit stack 5
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L8 to L9 using L2
iconst_1
istore 3
aload 2
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "alipays://platformapi/startApp?"
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
aload 2
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "intent://platformapi/startapp?"
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L10
L0:
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
ldc "com.eg.android.AlipayGphone"
invokestatic com/alipay/sdk/util/i/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/i$a;
astore 1
L1:
aload 1
ifnull L11
L3:
aload 1
getfield com/alipay/sdk/util/i$a/a [B
invokestatic com/alipay/sdk/util/i/a([B)Ljava/lang/String;
astore 1
L4:
aload 1
ifnull L12
L5:
aload 1
ldc "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L12
ldc "biz"
ldc "ClientSignError"
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L6:
iconst_1
ireturn
L12:
aload 2
astore 1
L7:
aload 2
ldc "intent://platformapi/startapp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L8
aload 2
ldc "intent://platformapi/startapp?"
ldc "alipays://platformapi/startApp?"
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L8:
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
aload 1
invokevirtual com/alipay/sdk/auth/AuthActivity/startActivity(Landroid/content/Intent;)V
L9:
iconst_1
ireturn
L2:
astore 1
iconst_1
ireturn
L10:
aload 0
getfield com/alipay/sdk/auth/AuthActivity$b/a Lcom/alipay/sdk/auth/AuthActivity;
aload 2
invokestatic com/alipay/sdk/auth/AuthActivity/a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z
ifeq L13
aload 1
invokevirtual android/webkit/WebView/stopLoading()V
iconst_1
ireturn
L13:
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
istore 3
L11:
iload 3
ireturn
.limit locals 4
.limit stack 4
.end method
