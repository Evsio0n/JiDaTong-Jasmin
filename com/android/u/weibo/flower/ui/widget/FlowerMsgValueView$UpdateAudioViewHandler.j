.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler
.super android/os/Handler
.inner class static UpdateAudioViewHandler inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler outer com/android/u/weibo/flower/ui/widget/FlowerMsgValueView

.field private final 'mValueView' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;>;"

.method <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler/mValueView Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler/mValueView Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgValueView
astore 2
aload 1
getfield android/os/Message/what I
tableswitch 100
L0
L0
default : L1
L1:
return
L0:
aload 2
ifnull L1
aload 2
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/notifyAudioDownFinish()V
return
.limit locals 3
.limit stack 1
.end method
