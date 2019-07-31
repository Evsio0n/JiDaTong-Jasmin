.bytecode 50.0
.class public synchronized abstract com/common/android/utils/audio/TalkPopWindow
.super java/lang/Object
.implements com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation

.field public static final 'MAX_RECORD_TIME' I = 120


.field public static final 'TOTAL' Ljava/lang/String; = "/120\""

.field protected 'mAnchorView' Landroid/view/View;

.field protected 'mAudioRecordManager' Lcom/common/android/utils/audio/AudioRecordManager;

.field protected 'mContext' Landroid/app/Activity;

.field private 'mIsInitError' Z

.field protected 'mMenuView' Landroid/view/View;

.field protected 'mParentHandler' Landroid/os/Handler;

.field protected 'mPopupWindow' Landroid/widget/PopupWindow;

.field protected 'mStatuBarHeight' I

.field protected 'modle' I

.method public <init>(Landroid/app/Activity;Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/audio/TalkPopWindow/modle I
aload 0
iconst_0
putfield com/common/android/utils/audio/TalkPopWindow/mIsInitError Z
aload 0
aload 1
putfield com/common/android/utils/audio/TalkPopWindow/mContext Landroid/app/Activity;
aload 0
aload 2
putfield com/common/android/utils/audio/TalkPopWindow/mAnchorView Landroid/view/View;
aload 0
invokespecial com/common/android/utils/audio/TalkPopWindow/init()V
aload 0
new com/common/android/utils/audio/AudioRecordManager
dup
invokespecial com/common/android/utils/audio/AudioRecordManager/<init>()V
putfield com/common/android/utils/audio/TalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
invokespecial com/common/android/utils/audio/TalkPopWindow/createNewAudioFile()V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
ldc2_w 120L
invokevirtual com/common/android/utils/audio/AudioRecordManager/setMaxRecordTime(J)V
return
.limit locals 3
.limit stack 3
.end method

.method private createNewAudioFile()V
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
iconst_0
putfield com/common/android/utils/audio/TalkPopWindow/mIsInitError Z
ldc ""
astore 1
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "audio"
invokestatic com/product/android/utils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "androidVoice"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".amr"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L6:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
iconst_1
putfield com/common/android/utils/audio/TalkPopWindow/mIsInitError Z
L7:
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 1
invokevirtual com/common/android/utils/audio/AudioRecordManager/setRecrodPath(Ljava/lang/String;)V
return
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mContext Landroid/app/Activity;
ldc "audio"
invokevirtual android/app/Activity/getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "androidVoice"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".amr"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L4:
aload 2
astore 1
goto L6
L5:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 3
.limit stack 3
.end method

.method private getStatuBarHeight()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "com.android.internal.R$dimen"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 2
aload 2
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 3
aload 2
ldc "status_bar_height"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aload 3
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 0
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield com/common/android/utils/audio/TalkPopWindow/mStatuBarHeight I
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
bipush 38
putfield com/common/android/utils/audio/TalkPopWindow/mStatuBarHeight I
return
.limit locals 4
.limit stack 3
.end method

.method private init()V
aload 0
invokevirtual com/common/android/utils/audio/TalkPopWindow/initView()V
aload 0
lconst_0
invokevirtual com/common/android/utils/audio/TalkPopWindow/setRecordedTime(J)V
aload 0
invokespecial com/common/android/utils/audio/TalkPopWindow/getStatuBarHeight()V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 4
aload 4
getfield android/util/DisplayMetrics/heightPixels I
istore 1
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mStatuBarHeight I
istore 2
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mAnchorView Landroid/view/View;
invokevirtual android/view/View/getHeight()I
istore 3
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mMenuView Landroid/view/View;
aload 4
getfield android/util/DisplayMetrics/widthPixels I
iload 1
iload 2
isub
iload 3
isub
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/common/android/utils/audio/TalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
astore 4
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 4
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
ldc_w 16973828
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
.limit locals 5
.limit stack 7
.end method

.method public audioFinish()V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioFinish()V
return
.limit locals 1
.limit stack 1
.end method

.method public audioStart()Z
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mIsInitError Z
ifeq L0
getstatic com/nd/android/u/allcommon/R$string/chat_error_audio_init I
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L0:
aload 0
invokespecial com/common/android/utils/audio/TalkPopWindow/createNewAudioFile()V
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioStart()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getModle()I
aload 0
getfield com/common/android/utils/audio/TalkPopWindow/modle I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract initView()V
.end method

.method public setAudioHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/common/android/utils/audio/TalkPopWindow/mParentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public abstract setRecordedTime(J)V
.end method
