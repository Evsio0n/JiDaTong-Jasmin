.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/HeaderFragmentActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.inner class inner com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1

.field private 'mLeftAndRightButtonClick' Landroid/view/View$OnClickListener;

.field protected 'mLeftBtn' Landroid/widget/Button;

.field protected 'mRightBtn' Landroid/widget/Button;

.field protected 'mTitleTextView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
new com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity$1/<init>(Lcom/nd/schoollife/ui/square/activity/HeaderFragmentActivity;)V
putfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftAndRightButtonClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected initContentView()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftAndRightButtonClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mRightBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftAndRightButtonClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftBtn Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mRightBtn Landroid/widget/Button;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mTitleTextView Landroid/widget/TextView;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected leftBtnHandle()V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method

.method protected setActivityTitle(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mTitleTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mTitleTextView Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mTitleTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mTitleTextView Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setLeftBtnBackground(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mLeftBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightBtnBackground(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mRightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/mRightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
