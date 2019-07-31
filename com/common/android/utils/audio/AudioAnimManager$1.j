.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioAnimManager$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/audio/AudioAnimManager/playAudio(Ljava/io/File;)V
.inner class inner com/common/android/utils/audio/AudioAnimManager$1

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioAnimManager;

.method <init>(Lcom/common/android/utils/audio/AudioAnimManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L1 to L3 using L2
L4:
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$000(Lcom/common/android/utils/audio/AudioAnimManager;)Z
ifeq L5
L0:
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$100(Lcom/common/android/utils/audio/AudioAnimManager;)Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
ifnull L1
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$100(Lcom/common/android/utils/audio/AudioAnimManager;)Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$200(Lcom/common/android/utils/audio/AudioAnimManager;)I
invokeinterface com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener/onAnimPlaying(I)V 1
L1:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$208(Lcom/common/android/utils/audio/AudioAnimManager;)I
pop
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$200(Lcom/common/android/utils/audio/AudioAnimManager;)I
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
invokestatic com/common/android/utils/audio/AudioAnimManager/access$300(Lcom/common/android/utils/audio/AudioAnimManager;)I
if_icmpne L4
aload 0
getfield com/common/android/utils/audio/AudioAnimManager$1/this$0 Lcom/common/android/utils/audio/AudioAnimManager;
iconst_0
invokestatic com/common/android/utils/audio/AudioAnimManager/access$202(Lcom/common/android/utils/audio/AudioAnimManager;I)I
pop
L3:
goto L4
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L4
L5:
return
.limit locals 2
.limit stack 2
.end method
