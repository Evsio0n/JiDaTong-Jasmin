.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdOpenUrl$1
.super android/webkit/WebChromeClient
.enclosing method com/nd/rj/common/login/view/NdOpenUrl/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/rj/common/login/view/NdOpenUrl$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdOpenUrl;

.method <init>(Lcom/nd/rj/common/login/view/NdOpenUrl;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdOpenUrl$1/this$0 Lcom/nd/rj/common/login/view/NdOpenUrl;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
iload 2
bipush 80
if_icmplt L0
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl$1/this$0 Lcom/nd/rj/common/login/view/NdOpenUrl;
invokestatic com/nd/rj/common/login/view/NdOpenUrl/access$000(Lcom/nd/rj/common/login/view/NdOpenUrl;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl$1/this$0 Lcom/nd/rj/common/login/view/NdOpenUrl;
invokestatic com/nd/rj/common/login/view/NdOpenUrl/access$000(Lcom/nd/rj/common/login/view/NdOpenUrl;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 3
.limit stack 2
.end method
