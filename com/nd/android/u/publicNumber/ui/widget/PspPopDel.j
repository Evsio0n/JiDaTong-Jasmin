.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspPopDel
.super java/lang/Object

.field private static final 'ITEM_MEASURE' I = 20


.field private 'mContext' Landroid/content/Context;

.field private 'mDelListener' Landroid/view/View$OnClickListener;

.field private 'mHeight' I

.field private 'mWindow' Landroid/widget/PopupWindow;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mHeight I
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private createWindow()V
new android/widget/TextView
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mContext Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
getstatic com/nd/android/u/chat/R$drawable/chat_psp_del_icon I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mDelListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mContext Landroid/content/Context;
ldc_w 20.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
aload 0
new android/widget/PopupWindow
dup
aload 2
iload 1
iload 1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
return
.limit locals 3
.limit stack 6
.end method

.method public dismiss()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
ifnull L1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
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

.method public getHeight()I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mHeight I
ifne L0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mContext Landroid/content/Context;
ldc_w 20.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mHeight I
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mHeight I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public setDelClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mDelListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public show(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PspPopDel/createWindow()V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopDel/mWindow Landroid/widget/PopupWindow;
aload 1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspPopDel/getHeight()I
bipush 7
iadd
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/getHeight()I
ineg
bipush 6
iadd
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method
