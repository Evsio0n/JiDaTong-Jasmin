.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class private ClickInfoListener inner com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener outer com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView

.field private 'imgContent' Landroid/widget/ImageView;

.field private 'imgMain' Landroid/widget/ImageView;

.field private 'llBottom' Landroid/widget/LinearLayout;

.field private 'llMore' Landroid/widget/LinearLayout;

.field private 'llTop' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'rlMain' Landroid/widget/RelativeLayout;

.field private 'tvContent' Landroid/widget/TextView;

.field private 'tvDetail' Landroid/widget/TextView;

.field private 'tvDivider' Landroid/widget/TextView;

.field private 'tvMain' Landroid/widget/TextView;

.field private 'tvTime' Landroid/widget/TextView;

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/mContext Landroid/content/Context;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_pub_complex_message_view I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvTitle I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvTime I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvContent I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvContent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvDivider I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvDivider Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvDetail I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvDetail Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/img I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvMain I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvMain Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgMain I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgMain Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llTop I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llTop Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llBottom I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llBottom Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llMore I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llMore Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/rlMain I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/rlMain Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
iconst_5
imul
bipush 6
idiv
putfield android/widget/LinearLayout$LayoutParams/width I
aload 1
aload 1
getfield android/widget/LinearLayout$LayoutParams/width I
i2d
ldc2_w 0.56D
dmul
d2i
putfield android/widget/LinearLayout$LayoutParams/height I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgMain Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 2
aload 2
aload 1
getfield android/widget/LinearLayout$LayoutParams/width I
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 2
aload 1
getfield android/widget/LinearLayout$LayoutParams/height I
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgMain Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 5
.end method

.method private showMulti(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo
astore 4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvMain Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/picurl Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgMain Landroid/widget/ImageView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
new com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener
dup
aload 0
aload 4
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;Ljava/lang/String;)V
astore 4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/rlMain Landroid/widget/RelativeLayout;
aload 4
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llMore Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iconst_1
istore 2
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo
astore 4
new com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/<init>(Landroid/content/Context;)V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/setData(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;)V
aload 5
new com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener
dup
aload 0
aload 4
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;Ljava/lang/String;)V
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llMore Landroid/widget/LinearLayout;
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 6
.limit stack 6
.end method

.method private showSingle(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTitle Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvDivider Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvDetail Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvContent Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTitle Landroid/widget/TextView;
aload 2
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvContent Landroid/widget/TextView;
aload 2
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/summary Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/picurl Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
new com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener
dup
aload 0
aload 2
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;Ljava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llTop Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/picurl Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/imgContent Landroid/widget/ImageView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
goto L1
.limit locals 3
.limit stack 5
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
astore 1
new java/util/Date
dup
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/createDate J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTime Landroid/widget/TextView;
aload 3
iconst_1
invokestatic com/product/android/utils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
ifnull L0
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/complexInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
ifne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llBottom Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llTop Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/tvTitle Landroid/widget/TextView;
ldc "error!!!"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
L1:
iload 2
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llBottom Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llTop Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/showSingle(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llBottom Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/llTop Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/showMulti(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
return
.limit locals 4
.limit stack 6
.end method
