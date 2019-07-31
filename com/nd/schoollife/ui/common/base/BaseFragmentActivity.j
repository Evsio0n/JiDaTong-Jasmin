.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/base/BaseFragmentActivity
.super android/support/v4/app/FragmentActivity
.implements com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
.inner class inner com/nd/schoollife/ui/common/base/BaseFragmentActivity$1

.field private 'btnBack' Landroid/widget/Button;

.field private 'customEmptyHeaderView' Landroid/view/View;

.field private 'emptyView' Landroid/widget/LinearLayout;

.field private 'headerViewContainer' Landroid/widget/FrameLayout;

.field private 'isEmptyViewShowing' Z

.field private 'loadingDialog' Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;

.field protected 'mCtx' Landroid/content/Context;

.field private 'mOnReloadClickedListener' Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;

.field private 'normalView' Landroid/widget/RelativeLayout;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/normalView Landroid/widget/RelativeLayout;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/isEmptyViewShowing Z
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/btnBack Landroid/widget/Button;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/customEmptyHeaderView Landroid/view/View;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/headerViewContainer Landroid/widget/FrameLayout;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initBaseView()V
aload 0
getstatic com/nd/schoollife/R$layout/base_fragment_activity I
invokespecial android/support/v4/app/FragmentActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/base_fragment_normal_view I
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/normalView Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/base_fragment_header I
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/FrameLayout
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/headerViewContainer Landroid/widget/FrameLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/base_fragment_network_error I
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/common/base/BaseFragmentActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity$1/<init>(Lcom/nd/schoollife/ui/common/base/BaseFragmentActivity;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public dismissLoading()V
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/isFinishing()Z
ifne L0
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
ifnull L0
aload 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public getEmptyHeaderView()Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/customEmptyHeaderView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getRootView()Landroid/view/View;
aload 0
getstatic com/nd/schoollife/R$id/base_root_view I
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/findViewById(I)Landroid/view/View;
areturn
.limit locals 1
.limit stack 2
.end method

.method public hideEmptyView()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/normalView Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/isEmptyViewShowing Z
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract initContentView()V
.end method

.method protected abstract initData(Landroid/os/Bundle;)V
.end method

.method protected abstract initEvent()V
.end method

.method protected abstract initHeadView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public isEmptyViewShowing()Z
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/isEmptyViewShowing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mCtx Landroid/content/Context;
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity/initBaseView()V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/initData(Landroid/os/Bundle;)V
aload 0
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/initHeadView(Landroid/content/Context;)Landroid/view/View;
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/customEmptyHeaderView Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/customEmptyHeaderView Landroid/view/View;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/headerViewContainer Landroid/widget/FrameLayout;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/headerViewContainer Landroid/widget/FrameLayout;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/customEmptyHeaderView Landroid/view/View;
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/headerViewContainer Landroid/widget/FrameLayout;
iconst_0
invokevirtual android/widget/FrameLayout/setVisibility(I)V
L1:
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/initContentView()V
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/initEvent()V
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc com/nd/schoollife/ui/common/base/BaseFragmentActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
aconst_null
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/setCurActivity(Landroid/app/Activity;)V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onPause()V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
aconst_null
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/setCurActivity(Landroid/app/Activity;)V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onPause()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onResume()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onResume()V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
aload 0
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/setCurActivity(Landroid/app/Activity;)V
return
.limit locals 1
.limit stack 2
.end method

.method public final processReloadViewDisplay(Z)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
ifnull L0
iload 1
ifeq L1
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/hideEmptyView()V
L0:
return
L1:
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/showEmptyView()V
return
.limit locals 2
.limit stack 1
.end method

.method public setContentView(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mCtx Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/normalView Landroid/widget/RelativeLayout;
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showEmptyView()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/emptyView Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/normalView Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/isEmptyViewShowing Z
return
.limit locals 1
.limit stack 2
.end method

.method public showLoading()V
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/isFinishing()Z
ifne L0
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
ifnull L1
aload 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L1:
aload 0
new com/nd/schoollife/ui/common/fragment/LoadingDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/LoadingDialog/<init>()V
putfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
aload 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseFragmentActivity/loadingDialog Lcom/nd/schoollife/ui/common/fragment/LoadingDialog;
ldc "loading"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L0:
return
.limit locals 2
.limit stack 3
.end method
