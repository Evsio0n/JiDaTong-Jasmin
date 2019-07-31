.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/view/GiftBoxListItemView
.super android/widget/LinearLayout
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$1
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$2
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$3
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$4
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$5

.field private static final 'RECORD_EXT' Ljava/lang/String; = ".amr"

.field private static final 'TEMP_EXT' Ljava/lang/String; = ".temp"

.field private 'mActivity' Landroid/app/Activity;

.field private 'mAnimationRecord' Landroid/graphics/drawable/AnimationDrawable;

.field private 'mBtnInReturn' Landroid/widget/Button;

.field private 'mBtnThanks' Landroid/widget/Button;

.field private 'mGiftBoxInfo' Lcom/nd/android/backpacksystem/data/ReceiveItems;

.field private 'mIProgressListener' Lcom/common/android/utils/download/progress_updownload/IProgressListener;

.field private 'mIsPlaying' Z

.field private 'mIvGiftImage' Landroid/widget/ImageView;

.field private 'mIvGiftRecord' Landroid/widget/ImageView;

.field private 'mIvRecordDownload' Landroid/widget/ImageView;

.field private 'mIvUserHeader' Landroid/widget/ImageView;

.field private 'mLlGiftRecord' Landroid/widget/LinearLayout;

.field private 'mOnClick' Landroid/view/View$OnClickListener;

.field private 'mOnPlayFinishListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;

.field private 'mOnPlayStopListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mTvCount' Landroid/widget/TextView;

.field private 'mTvGiftBlessing' Landroid/widget/TextView;

.field private 'mTvGiftName' Landroid/widget/TextView;

.field private 'mTvGiftTime' Landroid/widget/TextView;

.field private 'mTvUserName' Landroid/widget/TextView;

.field private 'mUserSimple' Lcom/product/android/commonInterface/contact/OapUserSimple;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIsPlaying Z
aload 0
new com/nd/android/backpacksystem/view/GiftBoxListItemView$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$1/<init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/backpacksystem/view/GiftBoxListItemView$3
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$3/<init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 0
new com/nd/android/backpacksystem/view/GiftBoxListItemView$4
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$4/<init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnPlayFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
new com/nd/android/backpacksystem/view/GiftBoxListItemView$5
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$5/<init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnPlayStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView/initEvent()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Z
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIsPlaying Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIsPlaying Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvRecordDownload Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mPbLoading Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView/animationReset()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftRecord Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnPlayStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnPlayFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
aload 2
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView/getStorePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$800(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/product/android/commonInterface/contact/OapUserSimple;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
areturn
.limit locals 1
.limit stack 1
.end method

.method private animationReset()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/isRunning()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/stop()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIsPlaying Z
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
iconst_0
invokevirtual android/graphics/drawable/AnimationDrawable/selectDrawable(I)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getStorePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/io/File
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
invokestatic com/common/android/utils/SdCardUtils/getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
ldc "backpack"
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/exists()Z
ifne L0
aload 3
invokevirtual java/io/File/mkdirs()Z
pop
L0:
new java/io/File
dup
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mLlGiftRecord Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mBtnThanks Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mBtnInReturn Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/backpacksystem/R$layout/gift_box_list_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
bipush 15
invokestatic com/nd/android/backpacksystem/helper/Utils/dipToPx(Landroid/content/Context;I)I
iconst_0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
bipush 15
invokestatic com/nd/android/backpacksystem/helper/Utils/dipToPx(Landroid/content/Context;I)I
iconst_0
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/setPadding(IIII)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/llGiftRecord I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mLlGiftRecord Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivGiftRecord I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftRecord Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivRecordDownload I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvRecordDownload Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/pbLoading I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mPbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivGiftImage I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftImage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftName I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvCount I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvCount Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvUserName I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvUserName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivUserHeader I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvUserHeader Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftTime I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftBlessing I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftBlessing Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnThanks I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mBtnThanks Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnInReturn I
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mBtnInReturn Landroid/widget/Button;
return
.limit locals 1
.limit stack 5
.end method

.method public setData(Lcom/nd/android/backpacksystem/data/ReceiveItems;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 1
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftImage Landroid/widget/ImageView;
getstatic com/nd/android/backpacksystem/R$drawable/icon_gift_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 1
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getIconUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftImage Landroid/widget/ImageView;
invokestatic com/nd/android/backpacksystem/helper/DisplayUtil/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 1
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
ifle L2
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/gift_count I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
new android/text/SpannableStringBuilder
dup
aload 1
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 2
aload 2
new android/text/style/ForegroundColorSpan
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/gift_count_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
aload 1
ldc "\uff1a"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
aload 1
invokevirtual java/lang/String/length()I
bipush 34
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvCount Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mLlGiftRecord Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L5:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/formatTime()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftTime Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mGiftBoxInfo Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mMessage Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftBlessing Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L9:
new com/nd/android/backpacksystem/view/GiftBoxListItemView$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView$2/<init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUserSimpleList(Ljava/util/List;)Ljava/util/ArrayList;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L10
aload 0
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
L11:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvUserName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L13:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
iconst_2
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvUserHeader Landroid/widget/ImageView;
bipush 8
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JBLandroid/widget/ImageView;I)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftName Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mLlGiftRecord Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
new java/io/File
dup
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mActivity Landroid/app/Activity;
aload 1
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
ldc ".amr"
invokestatic com/nd/android/backpacksystem/helper/Utils/getStorePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L14
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftRecord Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftRecord Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
aload 0
invokespecial com/nd/android/backpacksystem/view/GiftBoxListItemView/animationReset()V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvRecordDownload Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L5
L14:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvGiftRecord Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mIvRecordDownload Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L5
L6:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftTime Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L8:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvGiftBlessing Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_1
bipush 16
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L9
L10:
aload 0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mUserSimple Lcom/product/android/commonInterface/contact/OapUserSimple;
goto L11
L12:
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView/mTvUserName Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L13
.limit locals 3
.limit stack 5
.end method
