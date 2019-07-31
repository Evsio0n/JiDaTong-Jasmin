.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$5
.super android/webkit/WebChromeClient
.enclosing method com/product/android/ui/activity/WebViewActivity/initWebViewComponent()V
.inner class inner com/product/android/ui/activity/WebViewActivity$5

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
aload 0
aload 1
iload 2
invokespecial android/webkit/WebChromeClient/onProgressChanged(Landroid/webkit/WebView;I)V
iload 2
bipush 100
if_icmpne L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial android/webkit/WebChromeClient/onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$900(Lcom/product/android/ui/activity/WebViewActivity;)Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$900(Lcom/product/android/ui/activity/WebViewActivity;)Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$1000(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$900(Lcom/product/android/ui/activity/WebViewActivity;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$1000(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.signature "(Landroid/webkit/WebView;Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;Landroid/webkit/WebChromeClient$FileChooserParams;)Z"
.annotation invisible Landroid/annotation/TargetApi;
value I = 21
.end annotation
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$1200(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/ValueCallback;
ifnull L3
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$1200(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/ValueCallback;
aconst_null
invokeinterface android/webkit/ValueCallback/onReceiveValue(Ljava/lang/Object;)V 1
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aconst_null
invokestatic com/product/android/ui/activity/WebViewActivity/access$1202(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
pop
L3:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 2
invokestatic com/product/android/ui/activity/WebViewActivity/access$1202(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
pop
aload 3
invokevirtual android/webkit/WebChromeClient$FileChooserParams/createIntent()Landroid/content/Intent;
astore 1
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 1
sipush 5174
invokevirtual com/product/android/ui/activity/WebViewActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
iconst_1
ireturn
L2:
astore 1
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aconst_null
invokestatic com/product/android/ui/activity/WebViewActivity/access$1202(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
pop
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
.signature "(Landroid/webkit/ValueCallback<Landroid/net/Uri;>;)V"
aload 0
aload 1
ldc "*/*"
invokevirtual com/product/android/ui/activity/WebViewActivity$5/openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
.signature "(Landroid/webkit/ValueCallback<Landroid/net/Uri;>;Ljava/lang/String;)V"
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/product/android/ui/activity/WebViewActivity$5/openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.signature "(Landroid/webkit/ValueCallback<Landroid/net/Uri;>;Ljava/lang/String;Ljava/lang/String;)V"
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 1
invokestatic com/product/android/ui/activity/WebViewActivity/access$1102(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
pop
new android/content/Intent
dup
ldc "android.intent.action.GET_CONTENT"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "android.intent.category.OPENABLE"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "*/*"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/product/android/ui/activity/WebViewActivity$5/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 1
ldc "File Browser"
invokestatic android/content/Intent/createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
sipush 5173
invokevirtual com/product/android/ui/activity/WebViewActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 3
.end method
