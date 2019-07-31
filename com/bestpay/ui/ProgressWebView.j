.bytecode 50.0
.class public synchronized com/bestpay/ui/ProgressWebView
.super android/webkit/WebView
.inner class public WebChromeClient inner com/bestpay/ui/ProgressWebView$WebChromeClient outer com/bestpay/ui/ProgressWebView

.field private 'progressbar' Landroid/widget/ProgressBar;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new android/widget/ProgressBar
dup
aload 1
aconst_null
ldc_w 16842872
invokespecial android/widget/ProgressBar/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
putfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
new android/widget/AbsoluteLayout$LayoutParams
dup
iconst_m1
bipush 10
iconst_0
iconst_0
invokespecial android/widget/AbsoluteLayout$LayoutParams/<init>(IIII)V
invokevirtual android/widget/ProgressBar/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
ldc "progress_bar_states"
ldc "drawable"
aload 1
invokespecial com/bestpay/ui/ProgressWebView/getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
invokevirtual com/bestpay/ui/ProgressWebView/addView(Landroid/view/View;)V
return
.limit locals 3
.limit stack 7
.end method

.method static synthetic access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
aload 0
invokevirtual com/bestpay/ui/ProgressWebView/getResources()Landroid/content/res/Resources;
aload 1
aload 2
aload 3
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected onScrollChanged(IIII)V
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/AbsoluteLayout$LayoutParams
astore 5
aload 5
iload 1
putfield android/widget/AbsoluteLayout$LayoutParams/x I
aload 5
iload 2
putfield android/widget/AbsoluteLayout$LayoutParams/y I
aload 0
getfield com/bestpay/ui/ProgressWebView/progressbar Landroid/widget/ProgressBar;
aload 5
invokevirtual android/widget/ProgressBar/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/webkit/WebView/onScrollChanged(IIII)V
return
.limit locals 6
.limit stack 5
.end method
