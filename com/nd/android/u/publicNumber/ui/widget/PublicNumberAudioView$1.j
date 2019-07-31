.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1
.super java/util/TimerTask
.enclosing method com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
.inner class inner com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
ifnull L3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)I
iconst_1
if_icmpeq L0
L3:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/isPlaying()Z
ifeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/handleProgress Landroid/os/Handler;
sipush 770
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method
