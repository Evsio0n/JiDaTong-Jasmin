.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/fragment/TipsDialog
.super android/support/v4/app/DialogFragment
.inner class static synthetic inner com/nd/schoollife/ui/common/fragment/TipsDialog$1
.inner class public static final enum TYPE_SHOW inner com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW outer com/nd/schoollife/ui/common/fragment/TipsDialog

.field private 'mBtnLeft' Landroid/widget/TextView;

.field private 'mBtnRight' Landroid/widget/TextView;

.field private 'mContent' Ljava/lang/String;

.field private 'mGravity' I

.field private 'mLayout' Landroid/view/View;

.field private 'mLeftClickListener' Landroid/view/View$OnClickListener;

.field private 'mLeftText' Ljava/lang/String;

.field private 'mRightClickListener' Landroid/view/View$OnClickListener;

.field private 'mRightText' Ljava/lang/String;

.field private 'mTitle' Ljava/lang/String;

.field private 'mType' Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/DialogFragment/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mGravity I
aload 0
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_TWO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mType Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/DialogFragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
iconst_0
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setStyle(II)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
aload 0
aload 1
invokespecial android/support/v4/app/DialogFragment/onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
astore 1
aload 1
invokevirtual android/app/Dialog/getWindow()Landroid/view/Window;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/view/Window/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
ifnonnull L0
aload 0
aload 1
getstatic com/nd/schoollife/R$layout/common_dialog_tips I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
aload 0
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getWindow()Landroid/view/Window;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mGravity I
ifeq L1
aload 1
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mGravity I
putfield android/view/WindowManager$LayoutParams/gravity I
L2:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_tips_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_tips_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_tips_left I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnLeft Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_common_tips_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnRight Landroid/widget/TextView;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$1/$SwitchMap$com$nd$schoollife$ui$common$fragment$TipsDialog$TYPE_SHOW [I
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mType Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/ordinal()I
iaload
tableswitch 1
L3
L4
L5
default : L6
L6:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftText Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnLeft Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightText Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnRight Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/ViewGroup
astore 1
aload 1
ifnull L8
aload 1
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L8:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
areturn
L1:
aload 1
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
bipush 17
putfield android/view/WindowManager$LayoutParams/gravity I
goto L2
L3:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightClickListener Landroid/view/View$OnClickListener;
ifnull L9
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnRight Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L9:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnLeft Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L6
L4:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
ifnull L10
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnLeft Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L10:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mBtnRight Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/view_common_tips_btn_divider_v I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L6
L5:
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/ll_common_tips_btns I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLayout Landroid/view/View;
getstatic com/nd/schoollife/R$id/view_common_tips_btn_divider_h I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L6
.limit locals 4
.limit stack 5
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mContent Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGravity(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mGravity I
return
.limit locals 2
.limit stack 2
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLeftOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mLeftClickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setRightBtnText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRightOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mRightClickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mType Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/fragment/TipsDialog/mTitle Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
