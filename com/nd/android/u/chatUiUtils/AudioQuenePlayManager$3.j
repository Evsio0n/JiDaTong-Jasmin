.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3
.super java/lang/Object
.implements com/common/android/utils/audio/AudioPlayer$onPlayStopListener
.enclosing method com/nd/android/u/chatUiUtils/AudioQuenePlayManager
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.method <init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onStop()V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
iconst_0
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlay(Z)V
return
.limit locals 1
.limit stack 2
.end method
