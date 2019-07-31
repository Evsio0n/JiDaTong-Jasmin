.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
ifnonnull L0
getstatic com/android/u/weibo/R$string/header_pic_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 0
L1
L2
L3
default : L4
L4:
return
L1:
getstatic com/android/u/weibo/R$string/portrait_error_picture I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
return
L3:
getstatic com/android/u/weibo/R$string/header_pic_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 1
.end method
