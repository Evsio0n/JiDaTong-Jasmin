.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$2
.super java/lang/Object
.implements com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener
.enclosing method com/product/android/ui/activity/WebViewActivity
.inner class inner com/product/android/ui/activity/WebViewActivity$2
.inner class inner com/product/android/ui/activity/WebViewActivity$2$1

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimPlaying(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
new com/product/android/ui/activity/WebViewActivity$2$1
dup
aload 0
iload 1
invokespecial com/product/android/ui/activity/WebViewActivity$2$1/<init>(Lcom/product/android/ui/activity/WebViewActivity$2;I)V
invokevirtual com/product/android/ui/activity/WebViewActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onPlayFinish()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$700(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$700(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onPrepare()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$600(Lcom/product/android/ui/activity/WebViewActivity;)V
return
.limit locals 1
.limit stack 1
.end method
