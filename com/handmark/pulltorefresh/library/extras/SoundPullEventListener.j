.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/extras/SoundPullEventListener
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener
.signature "<V:Landroid/view/View;>Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TV;>;"

.field private final 'mContext' Landroid/content/Context;

.field private 'mCurrentMediaPlayer' Landroid/media/MediaPlayer;

.field private final 'mSoundMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Ljava/lang/Integer;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mContext Landroid/content/Context;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mSoundMap Ljava/util/HashMap;
return
.limit locals 2
.limit stack 3
.end method

.method private playSound(I)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/stop()V
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/release()V
L0:
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mContext Landroid/content/Context;
iload 1
invokestatic android/media/MediaPlayer/create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
putfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
ifnull L1
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/start()V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public addSoundEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;I)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mSoundMap Ljava/util/HashMap;
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public clearSounds()V
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mSoundMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCurrentMediaPlayer()Landroid/media/MediaPlayer;
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mCurrentMediaPlayer Landroid/media/MediaPlayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TV;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V"
aload 0
getfield com/handmark/pulltorefresh/library/extras/SoundPullEventListener/mSoundMap Ljava/util/HashMap;
aload 2
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
invokespecial com/handmark/pulltorefresh/library/extras/SoundPullEventListener/playSound(I)V
L0:
return
.limit locals 4
.limit stack 2
.end method
