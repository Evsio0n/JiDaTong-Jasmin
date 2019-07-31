.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspPopMore
.super java/lang/Object
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspPopMore$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$2

.field private static final 'ITEM_HEIGHT' I = 40


.field private static final 'ITEM_WIDTH' I = 120


.field private 'itemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mAnchorView' Landroid/view/View;

.field private 'mContext' Landroid/content/Context;

.field private 'mPspId' Ljava/lang/String;

.field private 'mWindow' Landroid/widget/PopupWindow;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspPopMore$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspPopMore$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)V
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mPspId Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mAnchorView Landroid/view/View;
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mPspId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createWindow()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/psp_info_more I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 4
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 5
aload 5
ldc_w -2004318072
invokevirtual android/widget/LinearLayout/setBackgroundColor(I)V
aload 5
iconst_2
iconst_2
iconst_2
iconst_2
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
new android/widget/ListView
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
astore 6
aload 6
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 6
getstatic com/nd/android/u/chat/R$drawable/activity_bg I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
aload 6
new android/widget/ArrayAdapter
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$layout/chat_psp_info_more_item I
aload 4
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;I[Ljava/lang/Object;)V
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 6
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
ldc_w 120.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mContext Landroid/content/Context;
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 2
aload 4
arraylength
istore 3
aload 5
aload 6
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
new android/widget/PopupWindow
dup
aload 5
iload 1
iconst_4
iadd
iload 2
iload 3
imul
iconst_4
iadd
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
return
.limit locals 7
.limit stack 7
.end method

.method public dismiss()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
ifnull L1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 1
.end method

.method public show()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspPopMore/createWindow()V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore/mAnchorView Landroid/view/View;
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method
