.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog
.super java/lang/Object

.field final 'TAG' Ljava/lang/String;

.field private 'ad' Landroid/app/AlertDialog;

.field private 'clickabRight' Landroid/widget/TextView;

.field private 'clickableLeft' Landroid/widget/TextView;

.field protected 'mContext' Landroid/content/Context;

.field private 'mRadioGroup' Landroid/widget/RadioGroup;

.field private 'mTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "AddFriendDialog"
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/TAG Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mContext Landroid/content/Context;
aload 0
new android/app/AlertDialog$Builder
dup
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/ad Landroid/app/AlertDialog;
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/ad Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/ad Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/getWindow()Landroid/view/Window;
astore 1
aload 1
getstatic com/nd/android/u/contact/R$layout/single_choies_dialog_layout I
invokevirtual android/view/Window/setContentView(I)V
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/tv_title I
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mTitle Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/create_group_radiogroup I
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioGroup
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mRadioGroup Landroid/widget/RadioGroup;
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mRadioGroup Landroid/widget/RadioGroup;
iload 2
invokevirtual android/widget/RadioGroup/check(I)V
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/tv_clickable_left I
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickableLeft Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/tv_clickable_right I
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickabRight Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mRadioGroup Landroid/widget/RadioGroup;
iload 2
invokevirtual android/widget/RadioGroup/getChildAt(I)Landroid/view/View;
astore 1
aload 1
instanceof android/widget/RadioButton
ifeq L0
aload 1
checkcast android/widget/RadioButton
iconst_1
invokevirtual android/widget/RadioButton/setChecked(Z)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public dismiss()V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/ad Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method public setLisener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickableLeft Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickabRight Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickableLeft Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickableLeft Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickabRight Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/clickabRight Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setRadioGroupLisener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mRadioGroup Landroid/widget/RadioGroup;
aload 1
invokevirtual android/widget/RadioGroup/setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(I)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mTitle Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/mTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
