.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/TimerEx
.super java/lang/Object
.inner class public static abstract interface OnTimer inner com/nd/android/u/chatUiUtils/TimerEx$OnTimer outer com/nd/android/u/chatUiUtils/TimerEx
.inner class private TimerThread inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread outer com/nd/android/u/chatUiUtils/TimerEx
.inner class inner com/nd/android/u/chatUiUtils/TimerEx$TimerThread$1

.field private 'mCurTime' I

.field private 'mDelayTime' I

.field private 'mHandler' Landroid/os/Handler;

.field private 'mOnTimer' Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;

.field private 'mTimerThread' Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;

.method public <init>(ILandroid/os/Handler;Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/chatUiUtils/TimerEx/mHandler Landroid/os/Handler;
aload 0
iload 1
putfield com/nd/android/u/chatUiUtils/TimerEx/mDelayTime I
aload 0
aload 3
putfield com/nd/android/u/chatUiUtils/TimerEx/mOnTimer Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
aload 0
new com/nd/android/u/chatUiUtils/TimerEx$TimerThread
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/TimerEx$TimerThread/<init>(Lcom/nd/android/u/chatUiUtils/TimerEx;)V
putfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
invokevirtual com/nd/android/u/chatUiUtils/TimerEx$TimerThread/start()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$008(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/chatUiUtils/TimerEx;)I
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mDelayTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/chatUiUtils/TimerEx;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/chatUiUtils/TimerEx;)Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mOnTimer Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public reset()V
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
ifnull L0
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
iconst_1
putfield com/nd/android/u/chatUiUtils/TimerEx$TimerThread/stop Z
L0:
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
aload 0
new com/nd/android/u/chatUiUtils/TimerEx$TimerThread
dup
aload 0
invokespecial com/nd/android/u/chatUiUtils/TimerEx$TimerThread/<init>(Lcom/nd/android/u/chatUiUtils/TimerEx;)V
putfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
aload 0
getfield com/nd/android/u/chatUiUtils/TimerEx/mTimerThread Lcom/nd/android/u/chatUiUtils/TimerEx$TimerThread;
invokevirtual com/nd/android/u/chatUiUtils/TimerEx$TimerThread/start()V
return
.limit locals 1
.limit stack 4
.end method

.method public resetTimer()V
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/TimerEx/mCurTime I
return
.limit locals 1
.limit stack 2
.end method
