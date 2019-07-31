.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioRecordManager$MyThread
.super java/lang/Thread
.inner class MyThread inner com/common/android/utils/audio/AudioRecordManager$MyThread outer com/common/android/utils/audio/AudioRecordManager

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioRecordManager;

.method <init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L5
aload 0
invokespecial java/lang/Thread/run()V
L6:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$100(Lcom/common/android/utils/audio/AudioRecordManager;)I
iconst_1
if_icmpne L7
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$200(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/media/MediaRecorder;
ifnull L6
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$200(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/getMaxAmplitude()I
istore 1
L1:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$300(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
iconst_2
putfield android/os/Message/what I
aload 2
iload 1
putfield android/os/Message/arg1 I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$300(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$400(Lcom/common/android/utils/audio/AudioRecordManager;)J
lsub
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$500(Lcom/common/android/utils/audio/AudioRecordManager;)J
lcmp
iflt L3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioFinish()V
L3:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$MyThread/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
invokestatic com/common/android/utils/audio/AudioRecordManager/access$600(Lcom/common/android/utils/audio/AudioRecordManager;)J
invokestatic java/lang/Thread/sleep(J)V
L4:
goto L6
L5:
astore 2
aload 2
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L6
L2:
astore 2
iconst_0
istore 1
goto L1
L7:
return
.limit locals 3
.limit stack 4
.end method
