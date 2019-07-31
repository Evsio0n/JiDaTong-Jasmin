.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener
.super java/lang/Object
.implements com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener
.inner class private AudioPlayListener inner com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener outer com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager

.field 'download' Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;

.field 'mMessage' Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
aload 0
new com/nd/android/u/publicNumber/controller/PspMediaFileDownloader
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
invokespecial com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/<init>(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/download Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
return
.limit locals 3
.limit stack 4
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/download Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
iconst_0
invokevirtual com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/startDownload(Z)V
return
.limit locals 2
.limit stack 2
.end method
