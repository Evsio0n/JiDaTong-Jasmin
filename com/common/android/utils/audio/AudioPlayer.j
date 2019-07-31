.bytecode 50.0
.class public synchronized com/common/android/utils/audio/AudioPlayer
.super java/lang/Object
.implements android/media/MediaPlayer$OnErrorListener
.implements android/media/MediaPlayer$OnCompletionListener
.inner class inner com/common/android/utils/audio/AudioPlayer$1
.inner class public static abstract interface onModeChangedListener inner com/common/android/utils/audio/AudioPlayer$onModeChangedListener outer com/common/android/utils/audio/AudioPlayer
.inner class public static abstract interface onPlayFinishListener inner com/common/android/utils/audio/AudioPlayer$onPlayFinishListener outer com/common/android/utils/audio/AudioPlayer
.inner class public static abstract interface onPlayStopListener inner com/common/android/utils/audio/AudioPlayer$onPlayStopListener outer com/common/android/utils/audio/AudioPlayer

.field private static 'instance' Lcom/common/android/utils/audio/AudioPlayer;

.field private 'mAudioManager' Landroid/media/AudioManager;

.field private 'mFileName' Ljava/lang/String;

.field private 'mIsAutoAdjust' Z

.field private 'mMode' I

.field private 'mModeChangedListener' Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;

.field private 'mPlayFinishListeners' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;>;"

.field private 'mPlayStopListeners' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;>;"

.field private 'mPlayer' Landroid/media/MediaPlayer;

.field private 'mSensor' Landroid/hardware/Sensor;

.field private 'mSensorManager' Landroid/hardware/SensorManager;

.field private 'mUri' Landroid/net/Uri;

.field private 'mbNotPlayNext' Z

.field private 'sensorEventListener' Landroid/hardware/SensorEventListener;

.method static <clinit>()V
new com/common/android/utils/audio/AudioPlayer
dup
invokespecial com/common/android/utils/audio/AudioPlayer/<init>()V
putstatic com/common/android/utils/audio/AudioPlayer/instance Lcom/common/android/utils/audio/AudioPlayer;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/common/android/utils/audio/AudioPlayer/mPlayFinishListeners Ljava/util/Vector;
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioPlayer/mMode I
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioPlayer/mIsAutoAdjust Z
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioPlayer/mbNotPlayNext Z
aload 0
new com/common/android/utils/audio/AudioPlayer$1
dup
aload 0
invokespecial com/common/android/utils/audio/AudioPlayer$1/<init>(Lcom/common/android/utils/audio/AudioPlayer;)V
putfield com/common/android/utils/audio/AudioPlayer/sensorEventListener Landroid/hardware/SensorEventListener;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 1
aload 0
aload 1
ldc "audio"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/media/AudioManager
putfield com/common/android/utils/audio/AudioPlayer/mAudioManager Landroid/media/AudioManager;
aload 0
aload 1
ldc "sensor"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/hardware/SensorManager
putfield com/common/android/utils/audio/AudioPlayer/mSensorManager Landroid/hardware/SensorManager;
aload 0
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mSensorManager Landroid/hardware/SensorManager;
bipush 8
invokevirtual android/hardware/SensorManager/getDefaultSensor(I)Landroid/hardware/Sensor;
putfield com/common/android/utils/audio/AudioPlayer/mSensor Landroid/hardware/Sensor;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/audio/AudioPlayer;)Z
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mIsAutoAdjust Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/audio/AudioPlayer;)Landroid/hardware/Sensor;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mSensor Landroid/hardware/Sensor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/audio/AudioPlayer;)Landroid/media/AudioManager;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mAudioManager Landroid/media/AudioManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/utils/audio/AudioPlayer;)Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mModeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/utils/audio/AudioPlayer;)I
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/common/android/utils/audio/AudioPlayer;I)I
aload 0
iload 1
putfield com/common/android/utils/audio/AudioPlayer/mMode I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getAudioDuration(Ljava/lang/String;)I
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch all from L0 to L1 using L4
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_m1
ireturn
L0:
new android/media/MediaPlayer
dup
invokespecial android/media/MediaPlayer/<init>()V
astore 2
aload 2
invokevirtual android/media/MediaPlayer/reset()V
aload 2
aload 0
invokevirtual android/media/MediaPlayer/setDataSource(Ljava/lang/String;)V
aload 2
invokevirtual android/media/MediaPlayer/prepare()V
aload 2
invokevirtual android/media/MediaPlayer/getDuration()I
istore 1
aload 2
invokevirtual android/media/MediaPlayer/stop()V
L1:
iload 1
ireturn
L2:
astore 0
iconst_m1
ireturn
L3:
astore 0
iconst_m1
ireturn
L4:
astore 0
aload 0
athrow
.limit locals 3
.limit stack 2
.end method

.method public static getInstance()Lcom/common/android/utils/audio/AudioPlayer;
getstatic com/common/android/utils/audio/AudioPlayer/instance Lcom/common/android/utils/audio/AudioPlayer;
areturn
.limit locals 0
.limit stack 1
.end method

.method private innerPlay(Landroid/content/Context;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mUri Landroid/net/Uri;
astore 2
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
ifnull L0
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/release()V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/audio/AudioPlayer$onPlayStopListener
invokeinterface com/common/android/utils/audio/AudioPlayer$onPlayStopListener/onStop()V 0
goto L1
L0:
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
aload 0
aload 1
aload 2
invokestatic android/media/MediaPlayer/create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
putfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
ifnonnull L2
aload 0
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
return
L2:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mIsAutoAdjust Z
ifeq L3
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mSensorManager Landroid/hardware/SensorManager;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/sensorEventListener Landroid/hardware/SensorEventListener;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mSensor Landroid/hardware/Sensor;
iconst_3
invokevirtual android/hardware/SensorManager/registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
pop
L3:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
iconst_3
invokevirtual android/media/MediaPlayer/setAudioStreamType(I)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
aload 0
invokevirtual android/media/MediaPlayer/setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/start()V
return
.limit locals 4
.limit stack 4
.end method

.method public getFileName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mFileName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMode()I
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
aload 0
iconst_0
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay(Z)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mbNotPlayNext Z
ifeq L0
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioPlayer/mbNotPlayNext Z
L1:
return
L0:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayFinishListeners Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/audio/AudioPlayer$onPlayFinishListener
invokeinterface com/common/android/utils/audio/AudioPlayer$onPlayFinishListener/onFinish()V 0
goto L2
.limit locals 2
.limit stack 2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
aload 0
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/audio/AudioPlayer$onPlayStopListener
invokeinterface com/common/android/utils/audio/AudioPlayer$onPlayStopListener/onStop()V 0
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public play(Ljava/io/File;Landroid/content/Context;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 1
ifnull L0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
aload 1
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
putfield com/common/android/utils/audio/AudioPlayer/mUri Landroid/net/Uri;
aload 0
aload 2
invokespecial com/common/android/utils/audio/AudioPlayer/innerPlay(Landroid/content/Context;)V
return
L0:
aload 1
ifnull L1
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file not exists:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
new java/lang/IllegalArgumentException
dup
ldc "file not exists: paramFile null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public play(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
.throws java/lang/IllegalStateException
.throws java/io/IOException
aload 0
aload 1
putfield com/common/android/utils/audio/AudioPlayer/mFileName Ljava/lang/String;
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
L0:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file \u201c"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mFileName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u201d not exists"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc ""
putfield com/common/android/utils/audio/AudioPlayer/mFileName Ljava/lang/String;
aload 2
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L1:
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
return
.limit locals 4
.limit stack 3
.end method

.method public removeOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayFinishListeners Ljava/util/Vector;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayFinishListeners Ljava/util/Vector;
aload 1
invokevirtual java/util/Vector/remove(Ljava/lang/Object;)Z
pop
aload 2
monitorexit
L1:
return
L2:
astore 1
L3:
aload 2
monitorexit
L4:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public removeOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
aload 1
invokevirtual java/util/Vector/remove(Ljava/lang/Object;)Z
pop
aload 2
monitorexit
L1:
return
L2:
astore 1
L3:
aload 2
monitorexit
L4:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public setMode(I)V
aload 0
iload 1
putfield com/common/android/utils/audio/AudioPlayer/mMode I
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mAudioManager Landroid/media/AudioManager;
iload 1
invokevirtual android/media/AudioManager/setMode(I)V
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioPlayer/mIsAutoAdjust Z
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mModeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
ifnull L0
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mModeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mMode I
invokeinterface com/common/android/utils/audio/AudioPlayer$onModeChangedListener/onModeChanged(I)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setNotPlayNext(Z)V
aload 0
iload 1
putfield com/common/android/utils/audio/AudioPlayer/mbNotPlayNext Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnModeChangedListener(Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioPlayer/mModeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPlayFinishListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayFinishListeners Ljava/util/Vector;
aload 1
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPlayStopListener(Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
aload 1
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public stopPlay()V
aload 0
iconst_1
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public stopPlay(Z)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
ifnull L0
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/stop()V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/reset()V
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
invokevirtual android/media/MediaPlayer/release()V
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioPlayer/mPlayer Landroid/media/MediaPlayer;
aload 0
ldc ""
putfield com/common/android/utils/audio/AudioPlayer/mFileName Ljava/lang/String;
L0:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mSensorManager Landroid/hardware/SensorManager;
aload 0
getfield com/common/android/utils/audio/AudioPlayer/sensorEventListener Landroid/hardware/SensorEventListener;
invokevirtual android/hardware/SensorManager/unregisterListener(Landroid/hardware/SensorEventListener;)V
iload 1
ifne L1
L2:
return
L1:
aload 0
getfield com/common/android/utils/audio/AudioPlayer/mPlayStopListeners Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/audio/AudioPlayer$onPlayStopListener
invokeinterface com/common/android/utils/audio/AudioPlayer$onPlayStopListener/onStop()V 0
goto L3
.limit locals 3
.limit stack 2
.end method

.method public unregistModeChangeListener()V
aload 0
aconst_null
putfield com/common/android/utils/audio/AudioPlayer/mModeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
return
.limit locals 1
.limit stack 2
.end method
