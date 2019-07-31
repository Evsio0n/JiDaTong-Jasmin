.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/LongClickView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/ui/longClickMenu/LongClickView$1

.field private 'bottomArrows' Landroid/widget/ImageView;

.field private 'bottomLayout' Landroid/widget/RelativeLayout;

.field private 'iLongClickCallBack' Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;

.field private 'mContent' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'padding' I

.field private 'topArrows' Landroid/widget/ImageView;

.field private 'topLayout' Landroid/widget/RelativeLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickView/init()V
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
putfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickView/init()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/longClickMenu/LongClickView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickView;)Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/iLongClickCallBack Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 6.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/nd/android/u/ui/longClickMenu/LongClickView/padding I
aload 0
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/setOrientation(I)V
aload 0
new android/widget/RelativeLayout
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
aload 0
new android/widget/ImageView
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickView/topArrows Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topArrows Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/long_click_pop_arrows_up I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topArrows Landroid/widget/ImageView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 1
aload 1
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 1
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 50.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
new android/widget/RelativeLayout
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
aload 0
new android/widget/ImageView
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomArrows Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomArrows Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/long_click_pop_arrows I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomArrows Landroid/widget/ImageView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/addView(Landroid/view/View;)V
aload 0
aload 1
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/addView(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 6
.end method

.method public createItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;Ljava/util/List;)V
.signature "(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;)V"
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
ifle L0
new android/widget/ImageView
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 0
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 3
new android/widget/LinearLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
fconst_1
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L0:
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
aload 3
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 3
getstatic com/nd/android/u/chat/R$drawable/long_click_pop_left_new I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
L2:
aload 3
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/padding I
iconst_0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/padding I
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
new android/widget/TextView
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 10.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iconst_0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 10.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iconst_0
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 2
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
aload 2
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 3
new com/nd/android/u/ui/longClickMenu/LongClickView$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/longClickMenu/LongClickView$1/<init>(Lcom/nd/android/u/ui/longClickMenu/LongClickView;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContent Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
return
L1:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
aload 2
aload 2
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 3
getstatic com/nd/android/u/chat/R$drawable/long_click_pop_right_new I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
goto L2
L3:
aload 3
getstatic com/nd/android/u/chat/R$drawable/long_click_pop_middle_ I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
goto L2
.limit locals 4
.limit stack 5
.end method

.method public isFormSelf(Z)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 2
iload 1
ifeq L0
aload 2
bipush 11
iconst_m1
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
iconst_0
iconst_0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 20.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomArrows Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topArrows Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L0:
aload 2
bipush 9
iconst_m1
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/mContext Landroid/content/Context;
ldc_w 20.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
goto L1
.limit locals 3
.limit stack 5
.end method

.method public isTopArrows(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/topLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView/bottomLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setLongClickCallBack(Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;)V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/LongClickView/iLongClickCallBack Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;
return
.limit locals 2
.limit stack 2
.end method
