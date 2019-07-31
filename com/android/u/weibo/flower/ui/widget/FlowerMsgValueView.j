.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgValueView
.super android/widget/RelativeLayout
.implements android/view/View$OnClickListener
.implements com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$2
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3
.inner class static UpdateAudioViewHandler inner com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler outer com/android/u/weibo/flower/ui/widget/FlowerMsgValueView

.field public static final 'MAX_LENGTH' I = 172


.field public static final 'MIN_LENGTH' I = 68


.field public static final 'SMILEY_SIZE' I = 20


.field public 'isInManageView' Z

.field private 'mAudioAnimManager' Lcom/common/android/utils/audio/AudioAnimManager;

.field private 'mAudioParams' Landroid/view/ViewGroup$LayoutParams;

.field private 'mAudioView' Landroid/view/View;

.field private 'mContext' Landroid/content/Context;

.field private 'mDownloadHelper' Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;

.field private 'mFlowerMsgInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field 'mHandler' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler;

.field private 'mImsMsg' Lcom/android/u/weibo/flower/business/bean/DownloadAudio;

.field private 'mIvFail' Landroid/widget/ImageView;

.field private 'mIvMsgRecord' Lcom/product/android/ui/widget/AnimImageView;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mRootView' Landroid/view/View;

.field private 'mTvDuration' Landroid/widget/TextView;

.field private 'mTvMsgText' Landroid/widget/TextView;

.field private 'mUploadHander' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/isInManageView Z
aload 0
aload 1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mUploadHander Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static hasSetFlowerMsg(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
ifnonnull L2
aload 0
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
ifnull L1
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
aload 0
new com/common/android/utils/audio/AudioAnimManager
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
invokespecial com/common/android/utils/audio/AudioAnimManager/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
invokevirtual com/common/android/utils/audio/AudioAnimManager/setOnPlayAudioAnimListener(Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$layout/wbflow_msg_value I
aload 0
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rl_wbflower_value I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_text I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/animImageView I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/AnimImageView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
invokevirtual com/product/android/ui/widget/AnimImageView/setFlowerMsgTalk()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvDuration I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/imgFail I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvFail Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/pbLoading I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mPbLoading Landroid/widget/ProgressBar;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rl_wbflower_audio_value I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mHandler Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler;
return
.limit locals 2
.limit stack 4
.end method

.method private isProfileNull()Z
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/isInManageView Z
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/hasSetFlowerMsg(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private playAudio()V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
ifnull L1
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual com/common/android/utils/audio/AudioAnimManager/playAudio(Ljava/io/File;)V
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
.limit locals 2
.limit stack 4
.end method

.method private refreshView(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
instanceof android/app/Activity
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
checkcast android/app/Activity
new com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3
dup
aload 0
iload 1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$3/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;I)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method private resetView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
bipush 8
invokevirtual com/product/android/ui/widget/AnimImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvFail Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method private setMsgTextView(Z)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_default_request_text I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
iconst_1
bipush 20
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private showDuration(Ljava/lang/String;)V
aload 1
invokestatic com/common/android/utils/audio/AudioPlayer/getAudioDuration(Ljava/lang/String;)I
istore 2
iload 2
iconst_m1
if_icmpne L0
return
L0:
iload 2
sipush 1000
idiv
istore 3
iload 3
istore 2
iload 3
bipush 120
if_icmple L1
bipush 120
istore 2
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
iload 2
bipush 68
iadd
sipush 172
invokestatic java/lang/Math/min(II)I
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 4
.limit stack 4
.end method

.method private tryCreateImsMessage()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ldc "/data/data/"
iconst_0
invokevirtual java/lang/String/startsWith(Ljava/lang/String;I)Z
ifne L0
aload 0
new com/android/u/weibo/flower/business/bean/DownloadAudio
dup
invokespecial com/android/u/weibo/flower/business/bean/DownloadAudio/<init>()V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
putfield com/android/u/weibo/flower/business/bean/DownloadAudio/mUrl Ljava/lang/String;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
aload 1
putfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public notifyAudioDownFinish()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mPbLoading Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
ifne L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L2
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/showDuration(Ljava/lang/String;)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/playAudio()V
L0:
return
L2:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvFail Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onAnimPlaying(I)V
aload 0
iload 1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/refreshView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/android/u/weibo/R$id/rl_wbflower_value I
aload 1
invokevirtual android/view/View/getId()I
if_icmpne L0
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/isProfileNull()Z
ifeq L1
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
ldc com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "tab"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
iconst_1
if_icmpne L2
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/android/u/weibo/R$string/common_resent I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/wbflower_set_record_err I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/common_resent I
new com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$1/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/cancel I
new com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$2
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView$2/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L2:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
ifnonnull L3
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/tryCreateImsMessage()V
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
ifnonnull L4
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/no_sdcard_for_msgvoice I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L5
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/playAudio()V
return
L5:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L6
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mDownloadHelper Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;
ifnonnull L7
aload 0
new com/android/u/weibo/flower/utils/DownloadAudioHelper
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mHandler Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView$UpdateAudioViewHandler;
invokespecial com/android/u/weibo/flower/utils/DownloadAudioHelper/<init>(Landroid/os/Handler;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mDownloadHelper Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;
L7:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mDownloadHelper Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mUrl Ljava/lang/String;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokevirtual com/android/u/weibo/flower/utils/DownloadAudioHelper/startDownload(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvFail Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L6:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onDetachedFromWindow()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
aload 0
invokespecial android/widget/RelativeLayout/onDetachedFromWindow()V
return
.limit locals 1
.limit stack 1
.end method

.method public onPause()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
return
.limit locals 1
.limit stack 1
.end method

.method public onPlayFinish()V
aload 0
iconst_3
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/refreshView(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onPrepare()V
return
.limit locals 1
.limit stack 0
.end method

.method public setTextColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvMsgText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mTvDuration Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setUploadHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mUploadHander Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setValue(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
aconst_null
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/resetView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/isProfileNull()Z
ifeq L1
aload 0
iconst_1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setMsgTextView(Z)V
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
ifne L2
aload 0
iconst_0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setMsgTextView(Z)V
return
L2:
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/tryCreateImsMessage()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
iconst_0
invokevirtual com/product/android/ui/widget/AnimImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
iconst_3
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mFlowerMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mIvFail Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
ldc_w 136.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
ifnull L4
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L4
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mImsMsg Lcom/android/u/weibo/flower/business/bean/DownloadAudio;
getfield com/android/u/weibo/flower/business/bean/DownloadAudio/mFilePath Ljava/lang/String;
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/showDuration(Ljava/lang/String;)V
return
L4:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mContext Landroid/content/Context;
ldc_w 68.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioView Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mAudioParams Landroid/view/ViewGroup$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setViewBackground(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/mRootView Landroid/view/View;
iload 1
invokevirtual android/view/View/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method
