.bytecode 50.0
.class public synchronized com/common/android/utils/audio/AudioAnimManager
.super java/lang/Object
.inner class inner com/common/android/utils/audio/AudioAnimManager$1
.inner class inner com/common/android/utils/audio/AudioAnimManager$2
.inner class inner com/common/android/utils/audio/AudioAnimManager$3
.inner class public static abstract interface onPlayAudioAnimListener inner com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener outer com/common/android/utils/audio/AudioAnimManager

.field private 'mAnimActionCount' I

.field private 'mAudioAnimListener' Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;

.field private 'mAudioPlayer' Lcom/common/android/utils/audio/AudioPlayer;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentAnimAction' I

.field private 'mPlayFile' Ljava/io/File;

.field private 'mbPlayingAudio' Z

.field private 'playFinishListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;

.field private 'playStopListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_3
putfield com/common/android/utils/audio/AudioAnimManager/mAnimActionCount I
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioAnimManager/mbPlayingAudio Z
aload 0
new com/common/android/utils/audio/AudioAnimManager$2
dup
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager$2/<init>(Lcom/common/android/utils/audio/AudioAnimManager;)V
putfield com/common/android/utils/audio/AudioAnimManager/playFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
new com/common/android/utils/audio/AudioAnimManager$3
dup
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager$3/<init>(Lcom/common/android/utils/audio/AudioAnimManager;)V
putfield com/common/android/utils/audio/AudioAnimManager/playStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
aload 0
aload 1
putfield com/common/android/utils/audio/AudioAnimManager/mContext Landroid/content/Context;
aload 0
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
putfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/audio/AudioAnimManager;)Z
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mbPlayingAudio Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/audio/AudioAnimManager;)Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/audio/AudioAnimManager;)I
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/common/android/utils/audio/AudioAnimManager;I)I
aload 0
iload 1
putfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$208(Lcom/common/android/utils/audio/AudioAnimManager;)I
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$300(Lcom/common/android/utils/audio/AudioAnimManager;)I
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAnimActionCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/utils/audio/AudioAnimManager;)V
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager/doFinish()V
return
.limit locals 1
.limit stack 1
.end method

.method private doFinish()V
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioAnimManager/mbPlayingAudio Z
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
ifnull L0
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
invokeinterface com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener/onPlayFinish()V 0
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/playFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/removeOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/playStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/removeOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
L0:
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioAnimManager/mPlayFile Ljava/io/File;
return
.limit locals 1
.limit stack 2
.end method

.method public playAudio(Ljava/io/File;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mPlayFile Ljava/io/File;
ifnull L0
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mPlayFile Ljava/io/File;
aload 1
invokevirtual java/io/File/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 2
L1:
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
iconst_1
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay(Z)V
iload 2
ifeq L2
return
L0:
iconst_0
istore 2
goto L1
L2:
aload 0
aload 1
putfield com/common/android/utils/audio/AudioAnimManager/mPlayFile Ljava/io/File;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/playFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/playStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
ifnull L3
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
invokeinterface com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener/onPrepare()V 0
L3:
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioAnimManager/mbPlayingAudio Z
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioAnimManager/mCurrentAnimAction I
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mPlayFile Ljava/io/File;
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mContext Landroid/content/Context;
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
new java/lang/Thread
dup
new com/common/android/utils/audio/AudioAnimManager$1
dup
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager$1/<init>(Lcom/common/android/utils/audio/AudioAnimManager;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 3
.limit stack 5
.end method

.method public setAnimActionCount(I)V
aload 0
iload 1
putfield com/common/android/utils/audio/AudioAnimManager/mAnimActionCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPlayAudioAnimListener(Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioAnimManager/mAudioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
return
.limit locals 2
.limit stack 2
.end method

.method public stopPlay()V
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mbPlayingAudio Z
ifeq L0
aload 0
getfield com/common/android/utils/audio/AudioAnimManager/mAudioPlayer Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
L0:
return
.limit locals 1
.limit stack 1
.end method
