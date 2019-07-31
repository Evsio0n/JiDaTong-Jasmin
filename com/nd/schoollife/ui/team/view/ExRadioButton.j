.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/view/ExRadioButton
.super android/widget/RelativeLayout
.implements android/view/View$OnClickListener
.inner class public static abstract interface OnExRadioCheckChange inner com/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange outer com/nd/schoollife/ui/team/view/ExRadioButton

.field private 'check' Z

.field private 'checkImgResId' I

.field private 'ivCheck' Landroid/widget/ImageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mOnExRadioCheckChange' Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;

.field private 'radioGroup' Lcom/nd/schoollife/ui/team/view/ExRadioGroup;

.field private 'tvTitle' Landroid/widget/TextView;

.field private 'uncheckImgResId' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 4
.end method

.method public getCheck()Z
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getText()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
new android/widget/RelativeLayout$LayoutParams
dup
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
ldc_w 25.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
ldc_w 25.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 11
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 1
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
new android/widget/TextView
dup
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mContext Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
ldc_w 17.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
ldc_w -11316397
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 9
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 1
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setFocusable(Z)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setClickable(Z)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public initFromXml()V
aload 0
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/getChildAt(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 0
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/getChildAt(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setFocusable(Z)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setClickable(Z)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
ifne L0
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setCheck(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setCheck(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/checkImgResId I
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/checkImgResId I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
iload 1
invokeinterface com/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange/onChangeCheck(Z)V 1
L2:
iload 1
ifeq L3
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExRadioGroup/notifyRadioClick(Lcom/nd/schoollife/ui/team/view/ExRadioButton;)V
L3:
return
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/uncheckImgResId I
ifeq L4
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/uncheckImgResId I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L1
L4:
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/ivCheck Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public setCheckImgResId(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/checkImgResId I
return
.limit locals 2
.limit stack 2
.end method

.method public setExRadioGroup(Lcom/nd/schoollife/ui/team/view/ExRadioGroup;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/radioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnExRadioCheckChange(Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/mOnExRadioCheckChange Lcom/nd/schoollife/ui/team/view/ExRadioButton$OnExRadioCheckChange;
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setUncheckImgResId(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExRadioButton/uncheckImgResId I
return
.limit locals 2
.limit stack 2
.end method

.method public updateCheck()V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExRadioButton/check Z
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setCheck(Z)V
return
.limit locals 1
.limit stack 2
.end method
