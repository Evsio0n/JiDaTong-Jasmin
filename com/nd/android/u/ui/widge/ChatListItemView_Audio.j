.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Audio
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Audio$1
.inner class private AudioOnClickListener inner com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener outer com/nd/android/u/ui/widge/ChatListItemView_Audio

.field public static final 'MIN_LENGTH' I = 80


.field protected 'llAnimview' Landroid/widget/LinearLayout;

.field protected 'mAnimImageView' Lcom/product/android/ui/widget/AnimImageView;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mLenPerSecond' D

.field protected 'mMaxLen' I

.field protected 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field protected 'mMinLen' I

.field private 'mlistener' Landroid/view/View$OnLongClickListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Audio$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mlistener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Audio$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mlistener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method private isAudioFileInvalid(Ljava/lang/String;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
istore 2
iload 2
ifle L1
aload 0
iload 2
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/setAudioLayoutWidth(I)V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private setAudioLayoutWidth(I)V
iload 1
istore 2
iload 1
sipush 1000
if_icmple L0
iload 1
i2f
ldc_w 1000.0F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 2
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/llAnimview Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 3
aload 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMinLen I
i2d
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mLenPerSecond D
iload 2
i2d
dmul
dadd
d2i
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMaxLen I
invokestatic java/lang/Math/min(II)I
putfield android/widget/LinearLayout$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/llAnimview Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 4
.limit stack 7
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initView(Landroid/content/Context;)V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_list_item_audio I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mContext Landroid/content/Context;
ldc_w 80.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMinLen I
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
i2d
ldc2_w 0.6D
dmul
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mContext Landroid/content/Context;
ldc_w 50.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
i2d
dsub
d2i
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMaxLen I
aload 0
fconst_1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMaxLen I
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMinLen I
isub
i2f
fmul
ldc_w 120.0F
fdiv
f2d
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mLenPerSecond D
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/animImageView I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/AnimImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llAnimview I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/llAnimview Landroid/widget/LinearLayout;
return
.limit locals 2
.limit stack 5
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
invokevirtual com/product/android/ui/widget/AnimImageView/setMyTalk(Z)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 1
invokevirtual com/product/android/ui/widget/AnimImageView/setTag(Ljava/lang/Object;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;Lcom/nd/android/u/ui/widge/ChatListItemView_Audio$1;)V
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mlistener Landroid/view/View$OnLongClickListener;
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Audio/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/setAudioLayoutWidth(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCurrent()I 0
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
iload 2
tableswitch -1
L0
L1
L2
L2
L2
L2
L2
L2
L3
L2
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
L1:
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/isAudioFileInvalid(Ljava/lang/String;)Z
ifeq L2
ldc "debug"
ldc "invalid audio file,set fail"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
L3:
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/isAudioFileInvalid(Ljava/lang/String;)Z
ifeq L2
ldc "debug"
ldc "invalid audio file,set fail"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 8
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 5
.end method
