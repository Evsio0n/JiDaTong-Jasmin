.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.super android/app/Activity
.inner class inner com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1

.field protected 'mIbLeft' Landroid/widget/ImageButton;

.field protected 'mIbRight' Landroid/widget/ImageButton;

.field protected 'mLlRight' Landroid/widget/LinearLayout;

.field protected 'mTvTitle' Landroid/widget/TextView;

.field private 'onclick' Landroid/view/View$OnClickListener;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1/<init>(Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;)V
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onclick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ib_left I
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mIbLeft Landroid/widget/ImageButton;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ib_right I
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mIbRight Landroid/widget/ImageButton;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tv_title I
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mTvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ll_right I
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mLlRight Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mIbLeft Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mIbRight Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected leftBtnHandle()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method

.method protected setActivityTitle(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mTvTitle Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity/mTvTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
