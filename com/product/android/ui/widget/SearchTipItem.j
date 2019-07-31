.bytecode 50.0
.class public synchronized com/product/android/ui/widget/SearchTipItem
.super android/widget/RelativeLayout
.inner class inner com/product/android/ui/widget/SearchTipItem$1
.inner class public static abstract interface OnGetSearchText inner com/product/android/ui/widget/SearchTipItem$OnGetSearchText outer com/product/android/ui/widget/SearchTipItem
.inner class public static abstract interface OnNetSearch inner com/product/android/ui/widget/SearchTipItem$OnNetSearch outer com/product/android/ui/widget/SearchTipItem
.inner class private SearchFromServer inner com/product/android/ui/widget/SearchTipItem$SearchFromServer outer com/product/android/ui/widget/SearchTipItem

.field private 'mActivity' Landroid/app/Activity;

.field private 'mGetSearchText' Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;

.field private 'mNetSearch' Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;

.field private 'mProgressBar' Landroid/view/View;

.field private 'mViewSearchFailedTip' Landroid/view/View;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/product/android/ui/widget/SearchTipItem/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/SearchTipItem;)Z
aload 0
invokespecial com/product/android/ui/widget/SearchTipItem/isSearching()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/SearchTipItem;)Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mGetSearchText Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mProgressBar Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/view/View;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mViewSearchFailedTip Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/product/android/ui/widget/SearchTipItem;)Landroid/app/Activity;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/product/android/ui/widget/SearchTipItem;)Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mNetSearch Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
invokevirtual com/product/android/ui/widget/SearchTipItem/getContext()Landroid/content/Context;
astore 1
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/search_tip_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 2
aload 2
new com/product/android/ui/widget/SearchTipItem$1
dup
aload 0
aload 1
invokespecial com/product/android/ui/widget/SearchTipItem$1/<init>(Lcom/product/android/ui/widget/SearchTipItem;Landroid/content/Context;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$id/pb I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/product/android/ui/widget/SearchTipItem/mProgressBar Landroid/view/View;
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$id/search_failed_tip I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/product/android/ui/widget/SearchTipItem/mViewSearchFailedTip Landroid/view/View;
return
.limit locals 3
.limit stack 5
.end method

.method private isSearching()Z
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mProgressBar Landroid/view/View;
invokevirtual android/view/View/isShown()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final updateContent(Landroid/app/Activity;Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;ZLcom/product/android/ui/widget/SearchTipItem$OnNetSearch;)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchTipItem/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/product/android/ui/widget/SearchTipItem/mGetSearchText Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;
aload 0
aload 4
putfield com/product/android/ui/widget/SearchTipItem/mNetSearch Lcom/product/android/ui/widget/SearchTipItem$OnNetSearch;
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mViewSearchFailedTip Landroid/view/View;
ifnull L0
iload 3
ifeq L1
iconst_0
istore 5
L2:
aload 0
getfield com/product/android/ui/widget/SearchTipItem/mViewSearchFailedTip Landroid/view/View;
iload 5
invokevirtual android/view/View/setVisibility(I)V
L0:
return
L1:
iconst_4
istore 5
goto L2
.limit locals 6
.limit stack 2
.end method
