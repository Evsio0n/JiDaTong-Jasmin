.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioRecordManager$2
.super android/os/Handler
.enclosing method com/common/android/utils/audio/AudioRecordManager
.inner class inner com/common/android/utils/audio/AudioRecordManager$2

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioRecordManager;

.method <init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$700(Lcom/common/android/utils/audio/AudioRecordManager;)Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
ifnonnull L3
return
L3:
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
L4
L5
default : L4
L4:
aload 1
getfield android/os/Message/what I
istore 2
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$700(Lcom/common/android/utils/audio/AudioRecordManager;)Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
iload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
invokeinterface com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener/onRecordFail(ILjava/lang/String;)V 2
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$900(Lcom/common/android/utils/audio/AudioRecordManager;)V
return
L5:
aload 1
getfield android/os/Message/arg1 I
istore 2
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$400(Lcom/common/android/utils/audio/AudioRecordManager;)J
lstore 5
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$700(Lcom/common/android/utils/audio/AudioRecordManager;)Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
iload 2
lload 3
lload 5
lsub
invokestatic com/common/android/utils/FormatUtils/millsec2Sec(J)I
i2l
invokeinterface com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener/onVolumeChanged(IJ)V 3
return
L0:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$700(Lcom/common/android/utils/audio/AudioRecordManager;)Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$800(Lcom/common/android/utils/audio/AudioRecordManager;)Ljava/lang/String;
lload 3
invokeinterface com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener/onRecordSuccess(Ljava/lang/String;J)V 3
L1:
return
L2:
astore 1
return
.limit locals 7
.limit stack 6
.end method
