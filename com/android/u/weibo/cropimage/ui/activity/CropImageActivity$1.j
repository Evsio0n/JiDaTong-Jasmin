.bytecode 50.0
.class synchronized com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1
.super android/os/Handler
.enclosing method com/android/u/weibo/cropimage/ui/activity/CropImageActivity
.inner class inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;

.method <init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
default : L1
L1:
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1/this$0 Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;
invokestatic com/android/u/weibo/cropimage/ui/activity/CropImageActivity/access$000(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)V
return
.limit locals 2
.limit stack 1
.end method
