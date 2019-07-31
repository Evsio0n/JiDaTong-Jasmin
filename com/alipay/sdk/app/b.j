.bytecode 50.0
.class public final synchronized com/alipay/sdk/app/b
.super android/webkit/WebViewClient

.field private 'a' Landroid/app/Activity;

.field private 'b' Z

.field private 'c' Landroid/os/Handler;

.field private 'd' Lcom/alipay/sdk/widget/a;

.field private 'e' Z

.field private 'f' Ljava/lang/Runnable;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
aload 0
new com/alipay/sdk/app/f
dup
aload 0
invokespecial com/alipay/sdk/app/f/<init>(Lcom/alipay/sdk/app/b;)V
putfield com/alipay/sdk/app/b/f Ljava/lang/Runnable;
aload 0
aload 1
putfield com/alipay/sdk/app/b/a Landroid/app/Activity;
aload 0
new android/os/Handler
dup
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
invokevirtual android/app/Activity/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
putfield com/alipay/sdk/app/b/c Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;Z)Z
aload 0
iload 1
putfield com/alipay/sdk/app/b/b Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private b()V
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
ifnonnull L0
aload 0
new com/alipay/sdk/widget/a
dup
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
L0:
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic b(Lcom/alipay/sdk/app/b;)V
aload 0
invokespecial com/alipay/sdk/app/b/c()V
return
.limit locals 1
.limit stack 1
.end method

.method private c()V
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L0:
aload 0
aconst_null
putfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
return
.limit locals 1
.limit stack 2
.end method

.method public final a()Z
aload 0
getfield com/alipay/sdk/app/b/e Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
invokespecial com/alipay/sdk/app/b/c()V
aload 0
getfield com/alipay/sdk/app/b/c Landroid/os/Handler;
aload 0
getfield com/alipay/sdk/app/b/f Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
ifnonnull L0
aload 0
new com/alipay/sdk/widget/a
dup
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
L0:
aload 0
getfield com/alipay/sdk/app/b/d Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
aload 0
getfield com/alipay/sdk/app/b/c Landroid/os/Handler;
aload 0
getfield com/alipay/sdk/app/b/f Ljava/lang/Runnable;
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
.limit stack 5
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/alipay/sdk/app/b/e Z
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
ldc "net"
ldc "SSLError"
ldc "\u8bc1\u4e66\u9519\u8bef"
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/b/b Z
ifeq L0
aload 2
invokevirtual android/webkit/SslErrorHandler/proceed()V
aload 0
iconst_0
putfield com/alipay/sdk/app/b/b Z
return
L0:
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
new com/alipay/sdk/app/c
dup
aload 0
aload 2
invokespecial com/alipay/sdk/app/c/<init>(Lcom/alipay/sdk/app/b;Landroid/webkit/SslErrorHandler;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 4
.limit stack 5
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 1
aload 2
aload 0
getfield com/alipay/sdk/app/b/a Landroid/app/Activity;
invokestatic com/alipay/sdk/util/i/a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
