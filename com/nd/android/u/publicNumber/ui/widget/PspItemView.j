.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspItemView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspItemView$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspItemView$2

.field private 'authImage' Landroid/widget/ImageView;

.field private 'dismissed' Landroid/widget/TextView;

.field private 'image' Landroid/widget/ImageView;

.field private 'itemClickListener' Landroid/view/View$OnClickListener;

.field private 'itemLongClickListener' Landroid/view/View$OnLongClickListener;

.field private 'mActivity' Landroid/app/Activity;

.field private 'mPspinfo' Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;

.field private 'name' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspItemView$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspItemView$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView$2/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemLongClickListener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView/initView(Landroid/content/Context;)V
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
new com/nd/android/u/publicNumber/ui/widget/PspItemView$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspItemView$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView$2/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemLongClickListener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/mPspinfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
checkcast android/app/Activity
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/mActivity Landroid/app/Activity;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_psp_gridlist_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/psp_icon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/image Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/psp_auth_public I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/authImage Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/psp_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/name Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/tvDismissed I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/dismissed Landroid/widget/TextView;
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/itemLongClickListener Landroid/view/View$OnLongClickListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/mPspinfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView/mPspinfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/name Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/authImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L3:
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/image Landroid/widget/ImageView;
iconst_1
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
return
L0:
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/isDimissed(Ljava/lang/String;)Z
ifeq L4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/name Landroid/widget/TextView;
ldc_w -4539718
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/dismissed Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/name Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/name Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/dismissed Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
goto L5
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView/authImage Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
.limit locals 2
.limit stack 4
.end method
