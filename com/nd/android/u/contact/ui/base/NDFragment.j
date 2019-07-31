.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/ui/base/NDFragment
.super android/support/v4/app/Fragment

.field protected 'mContext' Landroid/support/v4/app/FragmentActivity;

.field protected 'mInitBundle' Landroid/os/Bundle;

.field private 'mLayout' Landroid/widget/RelativeLayout;

.field private 'mLoadingView' Landroid/view/View;

.field private 'mTvLoadingTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected dismissLoading()V
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLoadingView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLoadingView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract fillInitData()V
.end method

.method protected abstract initData(Landroid/os/Bundle;)V
.end method

.method protected abstract initEvent()V
.end method

.method protected abstract initView()Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
putfield com/nd/android/u/contact/ui/base/NDFragment/mContext Landroid/support/v4/app/FragmentActivity;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/getArguments()Landroid/os/Bundle;
putfield com/nd/android/u/contact/ui/base/NDFragment/mInitBundle Landroid/os/Bundle;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
ifnonnull L0
aload 0
aload 1
getstatic com/nd/android/u/contact/R$layout/fragment_nd_base I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/contact/R$id/ll_base_loading I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/ui/base/NDFragment/mLoadingView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/contact/R$id/tv_base_loading_tip I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/ui/base/NDFragment/mTvLoadingTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/initView()Landroid/view/View;
iconst_0
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;I)V
L0:
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getParent()Landroid/view/ViewParent;
checkcast android/view/ViewGroup
astore 1
aload 1
ifnull L1
aload 1
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L1:
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mContext Landroid/support/v4/app/FragmentActivity;
aload 0
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
invokestatic com/nd/android/u/contact/ui/base/AnnotationHelper/initIdEvent(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/ui/base/NDFragment/fillInitData()V
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLayout Landroid/widget/RelativeLayout;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected showLoading(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLoadingView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mLoadingView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/ui/base/NDFragment/mTvLoadingTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
