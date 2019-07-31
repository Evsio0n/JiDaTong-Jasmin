.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
.inner class inner com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 770
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getCurrentPosition()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
ifle L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/access$200(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/widget/ProgressBar;
iload 2
invokevirtual android/widget/ProgressBar/setProgress(I)V
return
.limit locals 3
.limit stack 2
.end method
