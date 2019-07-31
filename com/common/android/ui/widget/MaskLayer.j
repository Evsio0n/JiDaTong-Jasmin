.bytecode 50.0
.class public synchronized com/common/android/ui/widget/MaskLayer
.super java/lang/Object

.field private 'mContext' Landroid/content/Context;

.field private 'mPopWindow' Landroid/widget/PopupWindow;

.field private 'mV' Landroid/view/View;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
aload 0
aload 1
putfield com/common/android/ui/widget/MaskLayer/mContext Landroid/content/Context;
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/common/android/ui/widget/MaskLayer/mContext Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
aload 0
new android/view/View
dup
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
putfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
aload 0
getfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
ldc_w -1979711488
invokevirtual android/view/View/setBackgroundColor(I)V
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
iconst_m1
iconst_m1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
getstatic com/nd/android/u/allcommon/R$style/popwin_anim_style I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setInputMethodMode(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public hideLayer()V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method public isLayerShowing()Z
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public maskLayerBelow(Landroid/view/View;)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public maskLayoutBelow(Landroid/view/View;I)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mPopWindow Landroid/widget/PopupWindow;
aload 1
iconst_0
iload 2
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
iconst_1
invokevirtual android/view/View/setFocusable(Z)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
iconst_1
invokevirtual android/view/View/setClickable(Z)V
aload 0
getfield com/common/android/ui/widget/MaskLayer/mV Landroid/view/View;
aload 1
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
