.bytecode 50.0
.class public synchronized abstract com/common/android/ui/CommonLoadingActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/common/android/ui/CommonLoadingActivity$1

.field public final 'STATE_LOADING' I

.field public final 'STATE_LOAD_FAIL' I

.field public final 'STATE_LOAD_SUCCESS' I

.field protected 'ivRetry' Landroid/widget/ImageView;

.field protected 'llLoading' Landroid/widget/LinearLayout;

.field protected 'llRetry' Landroid/widget/LinearLayout;

.field private 'mLoadState' I

.field protected 'pbLoading' Landroid/widget/ProgressBar;

.field private 'retry' Landroid/view/View$OnClickListener;

.field protected 'rootView' Landroid/view/View;

.field protected 'tvLoading' Landroid/widget/TextView;

.field protected 'tvNoData' Landroid/widget/TextView;

.field protected 'tvRetry' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/common/android/ui/CommonLoadingActivity/STATE_LOADING I
aload 0
iconst_1
putfield com/common/android/ui/CommonLoadingActivity/STATE_LOAD_FAIL I
aload 0
iconst_2
putfield com/common/android/ui/CommonLoadingActivity/STATE_LOAD_SUCCESS I
aload 0
new com/common/android/ui/CommonLoadingActivity$1
dup
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity$1/<init>(Lcom/common/android/ui/CommonLoadingActivity;)V
putfield com/common/android/ui/CommonLoadingActivity/retry Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/ui/CommonLoadingActivity;)I
aload 0
getfield com/common/android/ui/CommonLoadingActivity/mLoadState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract doOrRetry()V
.end method

.method protected hideAllCommonView()V
aload 0
iconst_2
putfield com/common/android/ui/CommonLoadingActivity/mLoadState I
aload 0
getfield com/common/android/ui/CommonLoadingActivity/rootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/flRoot I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
putfield com/common/android/ui/CommonLoadingActivity/rootView Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/llLoading I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/CommonLoadingActivity/llLoading Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/pbLoading I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/common/android/ui/CommonLoadingActivity/pbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvLoding I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/ui/CommonLoadingActivity/tvLoading Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/llRetry I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/CommonLoadingActivity/llRetry Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/ivRetry I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/CommonLoadingActivity/ivRetry Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvRetry I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/ui/CommonLoadingActivity/tvRetry Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvNoData I
invokevirtual com/common/android/ui/CommonLoadingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/ui/CommonLoadingActivity/tvNoData Landroid/widget/TextView;
aload 0
getfield com/common/android/ui/CommonLoadingActivity/rootView Landroid/view/View;
aload 0
getfield com/common/android/ui/CommonLoadingActivity/retry Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected showLoadingLayout()V
aload 0
iconst_0
putfield com/common/android/ui/CommonLoadingActivity/mLoadState I
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llLoading Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llRetry Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected showNoData(I)V
iload 1
ifeq L0
aload 0
aload 0
iload 1
invokevirtual com/common/android/ui/CommonLoadingActivity/getString(I)Ljava/lang/String;
invokevirtual com/common/android/ui/CommonLoadingActivity/showNoData(Ljava/lang/String;)V
return
L0:
aload 0
aconst_null
invokevirtual com/common/android/ui/CommonLoadingActivity/showNoData(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected showNoData(Ljava/lang/String;)V
aload 0
iconst_2
putfield com/common/android/ui/CommonLoadingActivity/mLoadState I
aload 0
getfield com/common/android/ui/CommonLoadingActivity/rootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llLoading Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llRetry Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/CommonLoadingActivity/tvNoData Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
ifnull L0
aload 0
getfield com/common/android/ui/CommonLoadingActivity/tvNoData Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected showRetryLayout()V
aload 0
iconst_1
putfield com/common/android/ui/CommonLoadingActivity/mLoadState I
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llLoading Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/CommonLoadingActivity/llRetry Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
