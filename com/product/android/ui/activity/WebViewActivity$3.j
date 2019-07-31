.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$3
.super java/lang/Object
.implements android/widget/PopupWindow$OnDismissListener
.enclosing method com/product/android/ui/activity/WebViewActivity
.inner class inner com/product/android/ui/activity/WebViewActivity$3

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$3/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDismiss()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$3/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$500(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
return
.limit locals 1
.limit stack 1
.end method
