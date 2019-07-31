.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/AudioQuenePlayManager
.super java/lang/Object
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3
.inner class private playTask inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask outer com/nd/android/u/chatUiUtils/AudioQuenePlayManager

.field private static 'mInstance' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.field private 'mContext' Landroid/content/Context;

.field private 'mIsPlaying' Z

.field private 'mMessageList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"

.field private 'mPlayingMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mPlayingMessageRead' Z

.field private 'mTask' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;

.field private 'playFinishListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;

.field private 'refreshHandler' Landroid/os/Handler;

.field private 'stopListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$1;)V
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mTask Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessageRead Z
aload 0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$1/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/refreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/playFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$3/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/playFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Z
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Z)Z
aload 0
iload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/refreshHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Z
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessageRead Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Ljava/util/List;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mMessageList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager/isAudioMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
getstatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mInstance Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
ifnonnull L0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager
dup
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager/<init>()V
putstatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mInstance Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
L0:
getstatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mInstance Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
areturn
.limit locals 0
.limit stack 2
.end method

.method private isAudioMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 2
iload 2
iconst_3
if_icmpeq L0
iload 2
sipush 20480
if_icmpne L1
L0:
iconst_1
ireturn
L1:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
ldc ".amr"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L3
L2:
iconst_0
ireturn
L3:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L4
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
L4:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private startTask()V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mTask Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/getState()Ljava/lang/Thread$State;
astore 1
getstatic java/lang/Thread$State/NEW Ljava/lang/Thread$State;
aload 1
if_acmpne L0
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mTask Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/start()V
L1:
return
L0:
getstatic java/lang/Thread$State/TERMINATED Ljava/lang/Thread$State;
aload 1
if_acmpne L1
aload 0
new com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/<init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$1;)V
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mTask Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mTask Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager$playTask/start()V
return
.limit locals 2
.limit stack 5
.end method

.method public ismIsPlaying()Z
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setDetailList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;)V"
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mMessageList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public startQuenePlay(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/content/Context;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
aload 0
aload 2
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mContext Landroid/content/Context;
aload 1
ifnull L5
aload 2
ifnonnull L6
L5:
ldc "debug"
ldc "message==null"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
L6:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mMessageList Ljava/util/List;
ifnull L7
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L8
L7:
ldc "debug"
ldc "mDetailList==null && mDetailList.size()==0"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
L8:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnull L9
aload 0
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlay()V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
if_acmpne L9
aload 0
aconst_null
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
return
L9:
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessageRead Z
aload 0
iconst_1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCurrent(I)V 1
L0:
new java/io/File
dup
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 1
aload 2
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/chatUiUtils/AudioQuenePlayManager/startTask()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
return
L3:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
return
L4:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method public stopPlay()V
aload 0
iconst_1
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlay(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public stopPlay(Z)V
iload 1
ifeq L0
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
L0:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnonnull L1
return
L1:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCurrent(I)V 1
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mIsPlaying Z
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 16
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public stopPlayAndSetCureentNull()V
aload 0
iconst_1
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlay(Z)V
aload 0
aconst_null
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager/mPlayingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
return
.limit locals 1
.limit stack 2
.end method
