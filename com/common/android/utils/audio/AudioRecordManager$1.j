.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioRecordManager$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/audio/AudioRecordManager/audioStart()Z
.inner class inner com/common/android/utils/audio/AudioRecordManager$1

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioRecordManager;

.method <init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordManager;
iconst_0
invokestatic com/common/android/utils/audio/AudioRecordManager/access$002(Lcom/common/android/utils/audio/AudioRecordManager;Z)Z
pop
return
.limit locals 1
.limit stack 2
.end method
