.bytecode 50.0
.class public synchronized abstract com/common/android/utils/audio/AudioRecordOperationManager
.super java/lang/Object
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$1
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$1$1
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$2
.inner class public static abstract interface IRecordOperation inner com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation outer com/common/android/utils/audio/AudioRecordOperationManager
.inner class public RecordType inner com/common/android/utils/audio/AudioRecordOperationManager$RecordType outer com/common/android/utils/audio/AudioRecordOperationManager

.field public static final 'CANCEL' I = 999


.field public static final 'MSG_UPLOAD' I = 100


.field private 'audioHandler' Landroid/os/Handler;

.field private 'hasSend' Z

.field private 'isCancel' Z

.field private 'listener' Landroid/view/View$OnTouchListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mIsProtecting' Z

.field private 'mNormalResId' I

.field private 'mRecordButton' Landroid/widget/Button;

.field private 'mRecordOperation' Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;

.field private 'mSelectedResId' I

.method public <init>(Landroid/content/Context;Landroid/widget/Button;)V
aload 0
aload 1
aload 2
new com/common/android/utils/audio/DefaultTalkPopWindow
dup
aload 1
checkcast android/app/Activity
aload 2
invokespecial com/common/android/utils/audio/DefaultTalkPopWindow/<init>(Landroid/app/Activity;Landroid/view/View;)V
invokespecial com/common/android/utils/audio/AudioRecordOperationManager/<init>(Landroid/content/Context;Landroid/widget/Button;Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
return
.limit locals 3
.limit stack 7
.end method

.method public <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager/isCancel Z
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager/mIsProtecting Z
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager/mNormalResId I
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager/mSelectedResId I
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager/hasSend Z
aload 0
new com/common/android/utils/audio/AudioRecordOperationManager$1
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordOperationManager$1/<init>(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
putfield com/common/android/utils/audio/AudioRecordOperationManager/listener Landroid/view/View$OnTouchListener;
aload 0
new com/common/android/utils/audio/AudioRecordOperationManager$2
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordOperationManager$2/<init>(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
putfield com/common/android/utils/audio/AudioRecordOperationManager/audioHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordButton Landroid/widget/Button;
aload 0
aload 3
invokevirtual com/common/android/utils/audio/AudioRecordOperationManager/setRecordOperation(Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
aload 2
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/listener Landroid/view/View$OnTouchListener;
invokevirtual android/widget/Button/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mIsProtecting Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
aload 0
iload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/mIsProtecting Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/widget/Button;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordButton Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/hasSend Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
aload 0
iload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/hasSend Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/isCancel Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
aload 0
iload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/isCancel Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/content/Context;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordOperation Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/common/android/utils/audio/AudioRecordOperationManager;)I
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mSelectedResId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
aload 0
invokespecial com/common/android/utils/audio/AudioRecordOperationManager/setNormalButton()V
return
.limit locals 1
.limit stack 1
.end method

.method private setNormalButton()V
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordOperation Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/hideMenuWindow()V 0
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordButton Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$string/audio_start I
invokevirtual android/widget/Button/setText(I)V
ldc "HYK"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mNormalResId = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mNormalResId I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mNormalResId I
ifle L0
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordButton Landroid/widget/Button;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mNormalResId I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordButton Landroid/widget/Button;
invokevirtual android/widget/Button/getParent()Landroid/view/ViewParent;
iconst_0
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
return
.limit locals 1
.limit stack 3
.end method

.method public destroy()V
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordOperation Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/destroy()V 0
return
.limit locals 1
.limit stack 1
.end method

.method protected abstract recoading()V
.end method

.method protected abstract sendAudioMsg(Ljava/lang/String;I)V
.end method

.method public setBgRes(II)V
aload 0
iload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/mNormalResId I
aload 0
iload 2
putfield com/common/android/utils/audio/AudioRecordOperationManager/mSelectedResId I
return
.limit locals 3
.limit stack 2
.end method

.method public setRecordOperation(Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordOperation Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/mRecordOperation Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager/audioHandler Landroid/os/Handler;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/setAudioHandler(Landroid/os/Handler;)V 1
return
.limit locals 2
.limit stack 2
.end method
