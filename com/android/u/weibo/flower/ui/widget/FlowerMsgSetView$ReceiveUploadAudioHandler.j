.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler
.super android/os/Handler
.inner class static ReceiveUploadAudioHandler inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView

.field private final 'mSetView' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;>;"

.method <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler/mSetView Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler/mSetView Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
astore 2
aload 2
ifnull L1
aload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method
