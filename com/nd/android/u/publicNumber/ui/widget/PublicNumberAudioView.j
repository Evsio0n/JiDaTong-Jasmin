.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
.super android/widget/RelativeLayout
.implements android/view/View$OnClickListener
.implements android/media/MediaPlayer$OnBufferingUpdateListener
.implements android/media/MediaPlayer$OnCompletionListener
.implements android/media/MediaPlayer$OnPreparedListener
.implements android/media/MediaPlayer$OnErrorListener
.inner class inner com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2
.inner class public static abstract interface PlayListener inner com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener outer com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView

.field public static final 'AUDIO_STATE_PAUSE' I = 0


.field public static final 'AUDIO_STATE_PLAY' I = 1


.field public static final 'AUDIO_STATE_PREPARE' I = 3


.field public static final 'AUDIO_STATE_START' I = 2


.field public static final 'AUDIO_STATE_STOP' I = 4


.field public static final 'PRI_HANDLER_MSG_UPATE_PLAY' I = 770


.field 'handleProgress' Landroid/os/Handler;

.field private 'mAudioUrl' Ljava/lang/String;

.field private 'mBtnPlay' Landroid/widget/Button;

.field private 'mContext' Landroid/content/Context;

.field private 'mPbCurr' Landroid/widget/ProgressBar;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mPlayListener' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;

.field private 'mPlayer' Landroid/media/MediaPlayer;

.field private 'mRoot' Landroid/view/View;

.field private 'mState' I

.field private 'mTimer' Ljava/util/Timer;

.field 'mTimerTask' Ljava/util/TimerTask;

.field private 'mTvDur' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTimer Ljava/util/Timer;
aload 0
new com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTimerTask Ljava/util/TimerTask;
aload 0
new com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$2/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/handleProgress Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/init()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/media/MediaPlayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method private endPrepareAudio(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTvDur Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/setAudioInfo()V
iload 1
ifeq L0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/playAudio()V
return
L0:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/pauseAudio()V
return
.limit locals 2
.limit stack 2
.end method

.method private init()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/psp_audio_player_view I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/btn_audio_play I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pb_audio_play I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_audio_duraion I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTvDur Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pb_audio_loading I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbLoading Landroid/widget/ProgressBar;
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/initView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
iconst_1
invokevirtual android/view/View/setClickable(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
iconst_1
invokevirtual android/view/View/setFocusable(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mRoot Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTimerTask Ljava/util/TimerTask;
lconst_0
ldc2_w 50L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
.limit locals 1
.limit stack 6
.end method

.method private initView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setSecondaryProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTvDur Landroid/widget/TextView;
ldc "\""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_psp_audio_play I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private isLocalPlay()Z
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
ifnull L0
iload 2
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
iload 2
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
ldc "https://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method private restorePlayer()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/stopAudio()V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/setData(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/initView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mContext Landroid/content/Context;
ldc "\u64ad\u653e\u5f02\u5e38\u8bf7\u91cd\u8bd5"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method private startPrepareAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/prepareAsync()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTvDur Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public getPlayer()Landroid/media/MediaPlayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
iload 2
imul
bipush 100
idiv
istore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iload 3
invokevirtual android/widget/ProgressBar/setSecondaryProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
aload 1
iload 2
invokeinterface com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener/onBufferingUpdate(Landroid/media/MediaPlayer;I)V 2
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
tableswitch 0
L0
L1
L2
L3
L3
default : L3
L3:
return
L2:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/startPrepareAudio()V
aload 0
iconst_3
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
return
L0:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/playAudio()V
return
L1:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/pauseAudio()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/resetAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
aload 1
invokeinterface com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener/onCompletion(Landroid/media/MediaPlayer;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/restorePlayer()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener/onError(Landroid/media/MediaPlayer;II)Z 3
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
tableswitch 0
L0
L1
L1
L2
L3
default : L1
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
ifnull L4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
aload 1
invokeinterface com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener/onPrepared(Landroid/media/MediaPlayer;)V 1
L4:
return
L3:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/stopAudio()V
goto L1
L2:
aload 0
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/endPrepareAudio(Z)V
goto L1
L0:
aload 0
iconst_0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/endPrepareAudio(Z)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public pauseAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_psp_audio_play I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/isPlaying()Z
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/pause()V
return
.limit locals 1
.limit stack 2
.end method

.method public playAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_psp_audio_pause I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/start()V
return
.limit locals 1
.limit stack 2
.end method

.method public resetAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_psp_audio_play I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
iconst_0
invokevirtual android/media/MediaPlayer/seekTo(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/isPlaying()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/pause()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method setAudioInfo()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setSecondaryProgress(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
invokevirtual android/widget/ProgressBar/setMax(I)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/isLocalPlay()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPbCurr Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
invokevirtual android/widget/ProgressBar/setSecondaryProgress(I)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
sipush 1000
idiv
istore 2
iload 2
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/getDuration()I
sipush 1000
irem
ifeq L1
iload 2
iconst_1
iadd
istore 1
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mTvDur Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setData(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
aload 0
iconst_2
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mBtnPlay Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_psp_audio_play I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/release()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
L1:
aload 0
new android/media/MediaPlayer
dup
invokespecial android/media/MediaPlayer/<init>()V
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
iconst_3
invokevirtual android/media/MediaPlayer/setAudioStreamType(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/reset()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mAudioUrl Ljava/lang/String;
invokevirtual android/media/MediaPlayer/setDataSource(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/isLocalPlay()Z
ifeq L3
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/prepareAsync()V
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public setPlayListener(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayListener Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;
return
.limit locals 2
.limit stack 2
.end method

.method public stopAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
ifnonnull L0
return
L0:
aload 0
iconst_4
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mState I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/isPlaying()Z
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/pause()V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
astore 1
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/mPlayer Landroid/media/MediaPlayer;
aload 1
iconst_0
invokevirtual android/media/MediaPlayer/seekTo(I)V
aload 1
invokevirtual android/media/MediaPlayer/reset()V
aload 1
invokevirtual android/media/MediaPlayer/release()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/initView()V
return
.limit locals 2
.limit stack 2
.end method
