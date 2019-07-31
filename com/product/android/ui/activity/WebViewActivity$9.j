.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$9
.super java/lang/Object
.implements com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener
.enclosing method com/product/android/ui/activity/WebViewActivity
.inner class inner com/product/android/ui/activity/WebViewActivity$9

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$9/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFail(ILjava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$9/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
bipush 101
putfield android/os/Message/what I
aload 3
iload 1
putfield android/os/Message/arg1 I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$9/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method public onProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onSuccess(Ljava/io/File;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$9/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
bipush 102
putfield android/os/Message/what I
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$9/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 2
.end method
