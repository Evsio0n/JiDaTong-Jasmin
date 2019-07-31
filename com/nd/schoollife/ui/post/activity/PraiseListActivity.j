.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/PraiseListActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.inner class inner com/nd/schoollife/ui/post/activity/PraiseListActivity$1

.field private 'mPostId' J

.field private 'mPraiseAdapter' Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;

.field private 'mPraises' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'pib' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private loadData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_1
istore 2
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
L0:
iconst_1
istore 2
L2:
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
bipush 10
aload 1
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 2
goto L2
.limit locals 3
.limit stack 6
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_praise_list I
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_post_praise_list I
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
new com/nd/schoollife/ui/post/adapter/PraiseAdapter
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokespecial com/nd/schoollife/ui/post/adapter/PraiseAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
putfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PraiseListActivity/loadData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/getIntent()Landroid/content/Intent;
ldc "OBJ_POSTINFOBEAN"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L0
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
putfield com/nd/schoollife/ui/post/activity/PraiseListActivity/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
putfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPostId J
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mCtx Landroid/content/Context;
ldc "\u6ca1\u6709\u4f20\u9012PostInfoBean\u5b9e\u4f53\u8fc7\u6765"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/post/activity/PraiseListActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PraiseListActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/post_praise_list_title I
invokevirtual android/widget/TextView/setText(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/finish()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PraiseListActivity/loadData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PraiseListActivity/loadData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onReloadClicked()V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PraiseListActivity/loadData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
bipush 10
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getUsers()Ljava/util/List;
iconst_0
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/updateData(Ljava/util/List;Z)V
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L1
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraiseAdapter Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/isEmpty()Z
ifeq L3
aload 0
getstatic com/nd/schoollife/R$id/ll_post_praise_list_empty I
invokevirtual com/nd/schoollife/ui/post/activity/PraiseListActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
L3:
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L0:
return
L2:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity/mPraises Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
.limit locals 4
.limit stack 3
.end method
