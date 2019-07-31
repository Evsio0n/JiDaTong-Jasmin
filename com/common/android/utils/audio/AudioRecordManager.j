.bytecode 50.0
.class public synchronized com/common/android/utils/audio/AudioRecordManager
.super java/lang/Object
.inner class inner com/common/android/utils/audio/AudioRecordManager$1
.inner class inner com/common/android/utils/audio/AudioRecordManager$2
.inner class public ERROR inner com/common/android/utils/audio/AudioRecordManager$ERROR outer com/common/android/utils/audio/AudioRecordManager
.inner class MyThread inner com/common/android/utils/audio/AudioRecordManager$MyThread outer com/common/android/utils/audio/AudioRecordManager
.inner class public static abstract interface onAudioRecordListener inner com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener outer com/common/android/utils/audio/AudioRecordManager

.field private static final 'DEFAULT_MAX_TIME' I = 120000


.field private static final 'DEFAULT_MIN_TIME' I = 1000


.field private static final 'GET_VOLUME' I = 2


.field private static final 'MIN_RECORD_DURATION' I = 1000


.field public static final 'STATE_CANCEL' I = 1


.field public static final 'STATE_RECORD' I = 0


.field private static final 'STATE_RECORDING' I = 1


.field private static final 'STATE_SUCCESS' I = 0


.field private 'mDuration' J

.field private 'mIsOperationProtect' Z

.field private 'mMaxRecordTime' J

.field private 'mMinRecordTime' J

.field private 'mPath' Ljava/lang/String;

.field private 'mRecordHanler' Landroid/os/Handler;

.field private 'mRecordListener' Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;

.field private 'mRecordState' I

.field private 'mRecorder' Landroid/media/MediaRecorder;

.field private 'mStartTime' J

.field private 'mThread' Lcom/common/android/utils/audio/AudioRecordManager$MyThread;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
aload 0
ldc2_w 100L
putfield com/common/android/utils/audio/AudioRecordManager/mDuration J
aload 0
ldc2_w 120000L
putfield com/common/android/utils/audio/AudioRecordManager/mMaxRecordTime J
aload 0
ldc2_w 1000L
putfield com/common/android/utils/audio/AudioRecordManager/mMinRecordTime J
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordManager/mIsOperationProtect Z
aload 0
new com/common/android/utils/audio/AudioRecordManager$2
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordManager$2/<init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
putfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method public <init>(Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
aload 0
ldc2_w 100L
putfield com/common/android/utils/audio/AudioRecordManager/mDuration J
aload 0
ldc2_w 120000L
putfield com/common/android/utils/audio/AudioRecordManager/mMaxRecordTime J
aload 0
ldc2_w 1000L
putfield com/common/android/utils/audio/AudioRecordManager/mMinRecordTime J
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordManager/mIsOperationProtect Z
aload 0
new com/common/android/utils/audio/AudioRecordManager$2
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordManager$2/<init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
putfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$002(Lcom/common/android/utils/audio/AudioRecordManager;Z)Z
aload 0
iload 1
putfield com/common/android/utils/audio/AudioRecordManager/mIsOperationProtect Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/utils/audio/AudioRecordManager;)I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/media/MediaRecorder;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/utils/audio/AudioRecordManager;)Landroid/os/Handler;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/utils/audio/AudioRecordManager;)J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mStartTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/common/android/utils/audio/AudioRecordManager;)J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mMaxRecordTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$600(Lcom/common/android/utils/audio/AudioRecordManager;)J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mDuration J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$700(Lcom/common/android/utils/audio/AudioRecordManager;)Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/common/android/utils/audio/AudioRecordManager;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/common/android/utils/audio/AudioRecordManager;)V
aload 0
invokespecial com/common/android/utils/audio/AudioRecordManager/deleteRecordFile()V
return
.limit locals 1
.limit stack 1
.end method

.method private deleteRecordFile()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
aload 1
invokevirtual java/io/File/delete()Z
pop
L1:
return
L2:
astore 1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
ifnull L1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
bipush -6
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokeinterface com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener/onRecordFail(ILjava/lang/String;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public audioFinish()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
iconst_1
if_icmpne L0
aload 0
aload 0
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioStop()I
putfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
ifne L1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mStartTime J
lsub
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L1:
return
.limit locals 2
.limit stack 5
.end method

.method public audioStart()Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L9 to L10 using L2
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mIsOperationProtect Z
ifeq L11
iconst_0
ireturn
L11:
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioRecordManager/mIsOperationProtect Z
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/common/android/utils/audio/AudioRecordManager$1
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordManager$1/<init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
ldc2_w 1000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
iconst_1
if_icmpne L3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
ifnull L3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/getState()Ljava/lang/Thread$State;
getstatic java/lang/Thread$State/TERMINATED Ljava/lang/Thread$State;
if_acmpeq L3
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
bipush -7
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L1:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
bipush -3
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioStop()I
pop
iconst_0
ireturn
L3:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
bipush -5
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L4:
iconst_0
ireturn
L5:
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioRecordManager/mRecordState I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
ifnonnull L6
aload 0
new android/media/MediaRecorder
dup
invokespecial android/media/MediaRecorder/<init>()V
putfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
iconst_1
invokevirtual android/media/MediaRecorder/setAudioSource(I)V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
iconst_3
invokevirtual android/media/MediaRecorder/setOutputFormat(I)V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
iconst_1
invokevirtual android/media/MediaRecorder/setAudioEncoder(I)V
L6:
new java/io/File
dup
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L7
new java/io/File
dup
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/createNewFile()Z
pop
L7:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
invokevirtual android/media/MediaRecorder/setOutputFile(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/prepare()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/start()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
ifnull L8
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/getState()Ljava/lang/Thread$State;
getstatic java/lang/Thread$State/RUNNABLE Ljava/lang/Thread$State;
if_acmpeq L10
L8:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
ifnull L9
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
invokeinterface com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener/onRecordStart()V 0
L9:
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/common/android/utils/audio/AudioRecordManager/mStartTime J
aload 0
new com/common/android/utils/audio/AudioRecordManager$MyThread
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordManager$MyThread/<init>(Lcom/common/android/utils/audio/AudioRecordManager;)V
putfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/start()V
L10:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public audioStop()I
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
ifnull L1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/stop()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/reset()V
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
invokevirtual android/media/MediaRecorder/release()V
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioRecordManager/mRecorder Landroid/media/MediaRecorder;
L1:
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
ifnull L4
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/isAlive()Z
ifeq L4
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/getState()Ljava/lang/Thread$State;
getstatic java/lang/Thread$State/RUNNABLE Ljava/lang/Thread$State;
if_acmpne L4
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
invokevirtual com/common/android/utils/audio/AudioRecordManager$MyThread/interrupt()V
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioRecordManager/mThread Lcom/common/android/utils/audio/AudioRecordManager$MyThread;
L4:
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mStartTime J
lsub
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mMinRecordTime J
lcmp
ifge L5
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
iconst_m1
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
iconst_m1
ireturn
L2:
astore 1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
bipush -2
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual java/lang/IllegalStateException/getMessage()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
bipush -2
ireturn
L3:
astore 1
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
bipush -2
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual java/lang/RuntimeException/getMessage()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/utils/audio/AudioRecordManager/mRecordHanler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
goto L1
L5:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setMaxRecordTime(J)V
aload 0
ldc2_w 1000L
lload 1
lmul
putfield com/common/android/utils/audio/AudioRecordManager/mMaxRecordTime J
return
.limit locals 3
.limit stack 5
.end method

.method public setMinRecordTime(J)V
aload 0
lload 1
putfield com/common/android/utils/audio/AudioRecordManager/mMinRecordTime J
lload 1
lconst_0
lcmp
ifgt L0
aload 0
ldc2_w 2000L
putfield com/common/android/utils/audio/AudioRecordManager/mMinRecordTime J
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public setOnAudioRecordListener(Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setRecrodPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordManager/mPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVolumeChangeDuration(J)V
aload 0
lload 1
putfield com/common/android/utils/audio/AudioRecordManager/mDuration J
return
.limit locals 3
.limit stack 3
.end method
