.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/base/BaseView
.super android/widget/RelativeLayout
.implements com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
.inner class inner com/nd/schoollife/ui/common/base/BaseView$1

.field public static final 'TAG' Ljava/lang/String;

.field private 'isEmptyViewShowing' Z

.field private 'mContainerLayout' Landroid/widget/RelativeLayout;

.field private 'mCtx' Landroid/content/Context;

.field private 'mErrorView' Landroid/widget/LinearLayout;

.field private 'mLoadingProgressBar' Landroid/widget/ProgressBar;

.field private 'mOnReloadClickedListener' Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/base/BaseView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/base/BaseView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/base/BaseView/isEmptyViewShowing Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseView/mCtx Landroid/content/Context;
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseView/initView()V
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
iconst_0
putfield com/nd/schoollife/ui/common/base/BaseView/isEmptyViewShowing Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseView/mCtx Landroid/content/Context;
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseView/initView()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/base/BaseView;)Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/base/BaseView;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mCtx Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/view_base_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/base_network_error_view I
invokevirtual com/nd/schoollife/ui/common/base/BaseView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/base_container_view I
invokevirtual com/nd/schoollife/ui/common/base/BaseView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/common/base/BaseView/mContainerLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/common/base/BaseView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseView$1/<init>(Lcom/nd/schoollife/ui/common/base/BaseView;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public dismissLoading()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
return
L2:
astore 1
getstatic com/nd/schoollife/ui/common/base/BaseView/TAG Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getViewContainer()Landroid/widget/RelativeLayout;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideErrorView()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mContainerLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/base/BaseView/isEmptyViewShowing Z
return
.limit locals 1
.limit stack 2
.end method

.method public isEmptyViewShowing()Z
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/isEmptyViewShowing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public processReloadViewDisplay(Z)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
ifnull L0
iload 1
ifeq L1
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseView/hideErrorView()V
L0:
return
L1:
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseView/showErrorView()V
return
.limit locals 2
.limit stack 1
.end method

.method public setContentView(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mCtx Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
iload 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mContainerLayout Landroid/widget/RelativeLayout;
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setContentView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mContainerLayout Landroid/widget/RelativeLayout;
aload 1
iconst_m1
iconst_m1
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseView/mOnReloadClickedListener Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showErrorView()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mErrorView Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mContainerLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/base/BaseView/isEmptyViewShowing Z
return
.limit locals 1
.limit stack 2
.end method

.method public showLoading()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
ifnonnull L1
aload 0
aload 0
getstatic com/nd/schoollife/R$id/pb_baseview_loading I
invokevirtual com/nd/schoollife/ui/common/base/BaseView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
L1:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
bipush 8
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/common/base/BaseView/mLoadingProgressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L3:
return
L2:
astore 1
getstatic com/nd/schoollife/ui/common/base/BaseView/TAG Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
