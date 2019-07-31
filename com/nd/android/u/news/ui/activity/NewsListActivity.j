.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/NewsListActivity
.super com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.implements android/widget/AdapterView$OnItemClickListener
.implements com/product/android/business/switchUser/TabUIRefresh
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements android/view/View$OnClickListener
.signature "Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;Landroid/widget/AdapterView$OnItemClickListener;Lcom/product/android/business/switchUser/TabUIRefresh;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Landroid/view/View$OnClickListener;"
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$1
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2$1
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$3
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$4
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$5
.inner class private GetAppMenuTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask outer com/nd/android/u/news/ui/activity/NewsListActivity
.inner class private GetMoreNewsListTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask outer com/nd/android/u/news/ui/activity/NewsListActivity
.inner class private GetNewsListTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask outer com/nd/android/u/news/ui/activity/NewsListActivity
.inner class ShowNewNewsCountTask inner com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask outer com/nd/android/u/news/ui/activity/NewsListActivity

.field protected 'mAdapter' Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;

.field private 'mAppMenu' Lcom/product/android/commonInterface/main/AppMenu;

.field protected 'mCurrentIndex' I

.field protected 'mCurrentNews' Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;

.field protected 'mFootView' Landroid/view/View;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mGetAppMenuTask' Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;

.field private 'mGetMoreNewsListTask' Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;

.field private 'mGetNewsListTask' Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;

.field protected 'mHasMoreData' Z

.field private 'mIsInitData' Z

.field protected 'mIsPullRefresh' Z

.field protected 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected 'mMinTs' J

.field protected 'mNewDataToast' Landroid/widget/Toast;

.field protected 'mReloadLayout' Landroid/widget/LinearLayout;

.field private 'mTvFootText' Landroid/widget/TextView;

.field protected 'mTvReload' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsInitData Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mLlRight Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/news/ui/activity/NewsListActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/showNewNewsCountToast(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mLlRight Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/product/android/commonInterface/main/AppMenu;)Lcom/product/android/commonInterface/main/AppMenu;
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mAppMenu Lcom/product/android/commonInterface/main/AppMenu;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/afterPublishProgress(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/showReloadView(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mTvFootText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFooterProgressBar Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)I
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/countNewNewsCount(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private afterPublishProgress(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$2/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method private countNewNewsCount(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)I
.signature "(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)I"
iconst_0
istore 5
iconst_0
istore 4
iload 5
istore 3
aload 2
ifnull L0
iload 5
istore 3
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 1
ifnull L1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
iload 4
istore 3
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostTime()J
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostTime()J
lcmp
ifle L2
iload 4
iconst_1
iadd
istore 4
goto L2
L1:
aload 2
invokeinterface java/util/List/size()I 0
istore 3
L0:
iload 3
istore 4
iload 3
bipush 21
if_icmpne L3
bipush 20
istore 4
L3:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method private initNewDatas(Z)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/isGettingMoreData()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/isRefreshing()Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L1:
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getNewNewsList(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private initTitleBarView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/initComponent()V
return
.limit locals 1
.limit stack 1
.end method

.method private showNewNewsCountToast(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
ifnonnull L0
aload 0
new android/widget/Toast
dup
aload 0
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
bipush 55
iconst_0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/default_title_hight I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual android/widget/Toast/setGravity(III)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
iconst_1
invokevirtual android/widget/Toast/setDuration(I)V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 0
ldc "window"
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
L0:
new android/widget/TextView
dup
aload 0
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
iconst_0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_margin_5 I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
iconst_0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_margin_5 I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 2
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 2
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/toast_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setBackgroundColor(I)V
aload 2
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_toast_new_news_count I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
aload 2
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mNewDataToast Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 3
.limit stack 6
.end method

.method private showReloadView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mReloadLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mReloadLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected afterGetMoreDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/isSuccess()Z
ifne L1
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_toast_get_more_newslist_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetMoreDatasFail(Ljava/lang/String;)V
return
L1:
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getMinTs()J
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mMinTs J
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetMoreDatasSuccess(Ljava/util/List;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected afterGetMoreDatasFail(Ljava/lang/String;)V
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$5
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$5/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/lang/String;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected afterGetMoreDatasSuccess(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$4
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$4/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected afterGetNewDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/isSuccess()Z
ifne L1
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_toast_get_newslist_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetNewDatasFail(Ljava/lang/String;)V
return
L1:
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getMinTs()J
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mMinTs J
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetNewDatasSuccess(Ljava/util/List;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected afterGetNewDatasFail(Ljava/lang/String;)V
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$3/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/lang/String;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected afterGetNewDatasSuccess(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$1/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method public clearOldAccountUI()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/clearDatas()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected getMoreNewsList()V
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/u/news/ui/activity/NewsListActivity$1;)V
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method protected getNewNewsList(Z)V
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask
dup
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Z)V
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_CHAT Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initAdapter()V
aload 0
new com/nd/android/u/news/ui/adapter/NewsListAdapter
dup
aload 0
invokespecial com/nd/android/u/news/ui/adapter/NewsListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
return
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/initAdapter()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mTvReload Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected initListView()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/reLoadLayout I
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mReloadLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tvReLoad I
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mTvReload Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/lv_news_list I
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/news/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mTvFootText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mFooterProgressBar Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
getstatic com/nd/android/u/news/R$color/transparent I
invokevirtual android/widget/ListView/setSelector(I)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initTitleBarData()V
aload 0
getstatic com/nd/android/u/news/R$string/news I
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mIbLeft Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
getstatic com/product/android/business/config/Configuration/NEED_SCHOOL_NEWS_HOMEPAGE Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mLlRight Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mIbRight Landroid/widget/ImageButton;
getstatic com/nd/android/u/news/R$drawable/btn_news_home I
invokevirtual android/widget/ImageButton/setBackgroundResource(I)V
new android/view/View
dup
aload 0
invokespecial android/view/View/<init>(Landroid/content/Context;)V
astore 1
aload 1
new android/view/ViewGroup$LayoutParams
dup
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$dimen/news_divide_line I
invokevirtual android/content/res/Resources/getDimension(I)F
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/news_item_line I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/view/View/setBackgroundColor(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mLlRight Landroid/widget/LinearLayout;
aload 1
iconst_0
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
aload 0
new com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/u/news/ui/activity/NewsListActivity$1;)V
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetAppMenuTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetAppMenuTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mLlRight Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 5
.end method

.method protected isGettingMoreData()Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected isRefreshing()Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public loadDataToMemory()V
return
.limit locals 1
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/tvReLoad I
if_icmpne L0
aload 0
iconst_0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/showReloadView(Z)V
aload 0
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getNewNewsList(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onClickNewsItem()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mCurrentNews Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isTopicNews()Z
ifeq L0
aload 1
aload 0
ldc com/nd/android/u/news/ui/activity/TopicNewsListActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "topic_news_id"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mCurrentNews Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getRelateTopic()Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/getPostId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
L1:
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/startActivity(Landroid/content/Intent;)V
return
L0:
aload 1
aload 0
ldc com/nd/android/u/news/ui/activity/NewsDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "news_index_in_list"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mCurrentIndex I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "news_list_maxtime"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mMinTs J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "news_list"
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getData()Ljava/util/List;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/news/R$layout/activity_news_list I
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initTitleBarView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/initTitleBarData()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/initListView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/initEvent()V
aload 0
iconst_0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initNewDatas(Z)V
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsInitData Z
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetMoreNewsListTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetAppMenuTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;
ifnull L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetAppMenuTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mGetAppMenuTask Lcom/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/cancel(Z)Z
pop
L2:
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mCurrentNews Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
iload 3
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
isub
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mCurrentIndex I
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/setReadFlag(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
aload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getItemViewType(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)Ljava/lang/String;
ldc "gallery"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
aload 0
ldc com/nd/android/u/news/ui/activity/NewsWithPhotoActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
ldc "news_id"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/startActivity(Landroid/content/Intent;)V
return
L1:
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/onClickNewsItem()V
return
.limit locals 6
.limit stack 4
.end method

.method public onLastItemVisible()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/isRefreshing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getLastItem()Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
ifnull L1
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getMoreNewsList()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFooterProgressBar Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFooterProgressBar Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_common_foot_loading I
invokevirtual android/widget/TextView/setText(I)V
L2:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsPullRefresh Z
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
ldc "last_get_news_time"
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 2
lload 2
lconst_0
lcmp
ifle L0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getApplicationContext()Landroid/content/Context;
lload 2
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 4
aload 0
getstatic com/nd/android/u/news/R$string/str_toast_last_update_time I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 1
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 4
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
L0:
aload 0
iconst_1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initNewDatas(Z)V
return
.limit locals 5
.limit stack 6
.end method

.method protected onRestart()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onRestart()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
ifnull L0
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getData()Ljava/util/List;
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onResume()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onResume()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsInitData Z
ifeq L0
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
iconst_0
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setReloadFlag(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Z)V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsInitData Z
return
L0:
aload 0
aload 0
invokestatic com/product/android/business/switchUser/SwitchUserReloadManager/tabActivityCheckUserSwitch(Landroid/app/Activity;Lcom/product/android/business/switchUser/TabUIRefresh;)V
return
.limit locals 1
.limit stack 3
.end method

.method public refreshWhenSwitchUser()V
aload 0
iconst_1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initNewDatas(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected rightBtnHandle()V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/news/ui/activity/CampusHomepageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "campus_homepage_url"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAppMenu Lcom/product/android/commonInterface/main/AppMenu;
invokevirtual com/product/android/commonInterface/main/AppMenu/getAppUrl()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected setReadFlag(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
L1:
return
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isTopicNews()Z
ifeq L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/isShowTopic()Z
ifeq L2
ldc "news"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
lstore 2
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
lload 2
invokevirtual com/nd/android/u/news/controller/NewsManager/setReadFlagToDb(J)V
return
.limit locals 4
.limit stack 3
.end method
