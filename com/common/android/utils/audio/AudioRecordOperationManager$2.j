.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioRecordOperationManager$2
.super android/os/Handler
.enclosing method com/common/android/utils/audio/AudioRecordOperationManager
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$2

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioRecordOperationManager;

.method <init>(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
1 : L0
999 : L1
default : L2
L2:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$700(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$200(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
ifne L3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_1
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$202(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 1
aload 1
ifnull L3
aload 1
ldc "fileName"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 1
ldc "fileName"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "duration"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
return
L0:
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "IM \u573a\u666f24~25\uff1a\u804a\u5929\u7a97\u53e3\u53d1\u9001\u8bed\u97f3 -Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
goto L2
L1:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_1
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$302(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
goto L2
L4:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$300(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
ifeq L5
new java/io/File
dup
aload 3
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/delete()Z
pop
return
L5:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$2/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
aload 3
iload 2
invokevirtual com/common/android/utils/audio/AudioRecordOperationManager/sendAudioMsg(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 4
.end method
