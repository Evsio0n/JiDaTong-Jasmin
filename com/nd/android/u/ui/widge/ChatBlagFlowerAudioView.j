.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatBlagFlowerAudioView
.super android/widget/RelativeLayout

.field public static final 'MAX_LENGTH' I = 172


.field public static final 'MIN_LENGTH' I = 68


.field private 'mContext' Landroid/content/Context;

.field private 'mIvFail' Landroid/widget/ImageView;

.field private 'mIvMsgRecord' Lcom/product/android/ui/widget/AnimImageView;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mTvDuration' Landroid/widget/TextView;

.field private 'params' Landroid/view/ViewGroup$LayoutParams;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$layout/chat_send_flower_layout I
aload 0
invokestatic com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/chat_animImageView I
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/AnimImageView
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
invokevirtual com/product/android/ui/widget/AnimImageView/setFlowerMsgTalk()V
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
iconst_3
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvDuration I
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mTvDuration Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgFail I
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvFail Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/pbLoading I
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mPbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
ifnonnull L0
aload 0
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
putfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
L0:
return
.limit locals 2
.limit stack 5
.end method

.method private showDuration(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
istore 2
iload 2
ifgt L0
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mContext Landroid/content/Context;
ldc_w 68.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
L1:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mTvDuration Landroid/widget/TextView;
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
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mTvDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/params Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mContext Landroid/content/Context;
iload 2
bipush 68
iadd
sipush 172
invokestatic java/lang/Math/min(II)I
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
goto L1
.limit locals 3
.limit stack 4
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
ifnonnull L0
ldc "CHAT"
ldc "chatblagflowerview null msg"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvFail Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mTvDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvMsgRecord Lcom/product/android/ui/widget/AnimImageView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCurrent()I 0
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
tableswitch 6
L1
L2
L3
default : L2
L2:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/showDuration(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
goto L2
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/mIvFail Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 2
.end method
