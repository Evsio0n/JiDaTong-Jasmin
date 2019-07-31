.bytecode 50.0
.class synchronized com/common/android/utils/audio/DefaultTalkPopWindow$1
.super java/lang/Object
.implements com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener
.enclosing method com/common/android/utils/audio/DefaultTalkPopWindow
.inner class inner com/common/android/utils/audio/DefaultTalkPopWindow$1

.field final synthetic 'this$0' Lcom/common/android/utils/audio/DefaultTalkPopWindow;

.method <init>(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)V
aload 0
aload 1
putfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRecordFail(ILjava/lang/String;)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
iload 1
tableswitch -7
L1
L2
L3
L2
L4
L5
L6
default : L2
L2:
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mContext Landroid/app/Activity;
getstatic com/nd/android/u/allcommon/R$string/error_on_recording I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
getstatic com/nd/android/u/allcommon/R$string/recording_too_short I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L5:
getstatic com/nd/android/u/allcommon/R$string/recording_error_stop I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L4:
getstatic com/nd/android/u/allcommon/R$string/recording_error_start I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L1:
getstatic com/nd/android/u/allcommon/R$string/recording_error_recording I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L3:
getstatic com/nd/android/u/allcommon/R$string/recording_error_empty_file I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onRecordStart()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
invokestatic com/common/android/utils/audio/DefaultTalkPopWindow/access$100(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onRecordSuccess(Ljava/lang/String;J)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mParentHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mParentHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 4
aload 4
iconst_0
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "fileName"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
ldc "audiobug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onRecordSuccess:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
invokestatic com/common/android/utils/audio/DefaultTalkPopWindow/access$000(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)J
lconst_0
lcmp
ifgt L1
aload 5
ldc "duration"
lload 2
invokestatic com/common/android/utils/FormatUtils/millsec2Sec(J)I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L2:
aload 4
aload 5
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mParentHandler Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
L1:
aload 5
ldc "duration"
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
invokestatic com/common/android/utils/audio/DefaultTalkPopWindow/access$000(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)J
l2i
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
goto L2
.limit locals 6
.limit stack 4
.end method

.method public onVolumeChanged(IJ)V
aload 0
iload 1
invokevirtual com/common/android/utils/audio/DefaultTalkPopWindow$1/setvolume(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
lload 2
invokevirtual com/common/android/utils/audio/DefaultTalkPopWindow/setRecordedTime(J)V
return
.limit locals 4
.limit stack 3
.end method

.method public setvolume(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow$1/this$0 Lcom/common/android/utils/audio/DefaultTalkPopWindow;
invokestatic com/common/android/utils/audio/DefaultTalkPopWindow/access$200(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)Lcom/common/android/utils/audio/VolumeView;
iload 1
i2d
invokevirtual com/common/android/utils/audio/VolumeView/setVolume(D)V
return
.limit locals 2
.limit stack 3
.end method
