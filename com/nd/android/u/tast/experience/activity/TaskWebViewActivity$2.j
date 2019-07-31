.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2
.super android/webkit/WebViewClient
.enclosing method com/nd/android/u/tast/experience/activity/TaskWebViewActivity/initWebViewComponent()V
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$300(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Z
ifeq L0
aload 2
ldc "https://oa.91.com/morePoint/returnBack"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/finish()V
iconst_1
ireturn
L1:
aload 2
ldc "https://oa.91.com/morePoint/receivePoint"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
aload 1
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/finish()V
iconst_1
ireturn
L2:
aload 1
aload 2
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/handler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 4
.end method
