.bytecode 50.0
.class final synchronized com/flurry/android/q
.super android/webkit/WebViewClient

.field private synthetic 'a' Lcom/flurry/android/CatalogActivity;

.method <init>(Lcom/flurry/android/CatalogActivity;)V
aload 0
aload 1
putfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
astore 1
new com/flurry/android/f
dup
iconst_5
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/b(Lcom/flurry/android/CatalogActivity;)J
invokespecial com/flurry/android/f/<init>(BJ)V
astore 2
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
getfield com/flurry/android/p/d J
lstore 3
aload 1
getfield com/flurry/android/p/e Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
lload 3
putfield com/flurry/android/p/d J
L1:
return
L2:
astore 1
return
.limit locals 5
.limit stack 5
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to load url: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " with an errorCode of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/c(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ldc "Cannot find Android Market information. <p>Please check your network"
ldc "text/html"
ldc "UTF-8"
invokevirtual android/webkit/WebView/loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
ifnull L1
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
new com/flurry/android/f
dup
bipush 6
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/b(Lcom/flurry/android/CatalogActivity;)J
invokespecial com/flurry/android/f/<init>(BJ)V
invokevirtual com/flurry/android/p/a(Lcom/flurry/android/f;)V
L1:
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/v;
aload 1
invokevirtual android/webkit/WebView/getContext()Landroid/content/Context;
aload 0
getfield com/flurry/android/q/a Lcom/flurry/android/CatalogActivity;
invokestatic com/flurry/android/CatalogActivity/a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
aload 2
invokevirtual com/flurry/android/v/a(Landroid/content/Context;Lcom/flurry/android/p;Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 6
.end method
