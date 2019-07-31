.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager
.super com/common/android/utils/audio/AudioRecordOperationManager
.inner class private FlowerAudioRecordManager inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.method public <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;Landroid/widget/Button;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
aload 2
aload 3
invokespecial com/common/android/utils/audio/AudioRecordOperationManager/<init>(Landroid/content/Context;Landroid/widget/Button;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected recoading()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method protected sendAudioMsg(Ljava/lang/String;I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 1
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method
