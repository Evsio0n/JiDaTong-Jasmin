.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/MessageView
.super com/nd/schoollife/ui/common/base/BaseView
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener

.field public static final 'KEY' Ljava/lang/String; = "type"

.field private 'isFirstLoadData' Z

.field private 'mAdapter' Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mNodataLL' Landroid/widget/LinearLayout;

.field private 'mTipTV' Landroid/widget/TextView;

.field private 'mType' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/MessageView/isFirstLoadData Z
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/MessageView/isFirstLoadData Z
aload 0
iload 2
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/initView()V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/MessageView/isFirstLoadData Z
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/initView()V
return
.limit locals 3
.limit stack 3
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/getContext()Landroid/content/Context;
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
getstatic com/nd/schoollife/R$layout/fragment_square_message I
aconst_null
invokestatic com/nd/schoollife/ui/square/view/widget/MessageView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/plv_square_message I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_message_nodata_tip I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mTipTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_message_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mNodataLL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
iconst_1
if_icmpne L0
aload 0
new com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceiveCommentListViewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
iconst_2
if_icmpne L2
aload 0
new com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceiveAtListViewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
goto L1
L2:
aload 0
new com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
dup
bipush 20
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/<init>(I)V
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
putfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
goto L1
.limit locals 2
.limit stack 7
.end method

.method private showNodataView()V
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
ifnull L0
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getList()Ljava/util/List;
ifnull L0
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iconst_1
istore 1
L0:
iload 1
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mNodataLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mTipTV Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/str_square_message_nodata_at I
invokevirtual android/widget/TextView/setText(I)V
L3:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mNodataLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
ifne L4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mTipTV Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/str_square_message_nodata_like I
invokevirtual android/widget/TextView/setText(I)V
goto L3
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
iconst_1
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mTipTV Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/str_square_message_nodata_reply I
invokevirtual android/widget/TextView/setText(I)V
goto L3
.limit locals 3
.limit stack 2
.end method

.method private startTask(IILcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_m1
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mType I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_0
istore 2
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L4
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L5
L4:
iconst_1
istore 2
L6:
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mContext Landroid/content/Context;
aload 0
iload 1
aload 3
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L2:
sipush 1536
istore 1
goto L3
L0:
sipush 1540
istore 1
goto L3
L1:
sipush 1538
istore 1
goto L3
L5:
aload 3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L6
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/nextPage()I
istore 2
goto L6
.limit locals 4
.limit stack 7
.end method

.method public initData()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/isFirstLoadData Z
ifeq L0
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getPage()I
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/startTask(IILcom/nd/schoollife/ui/common/task/CallStyle;)V
L0:
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/MessageView/isFirstLoadData Z
return
.limit locals 1
.limit stack 4
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getPage()I
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/startTask(IILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getPage()I
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/startTask(IILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onReloadClicked()V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getPage()I
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/startTask(IILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 4
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
tableswitch 1536
L0
L1
L2
L1
L3
default : L1
L1:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
L5:
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/showNodataView()V
return
L0:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt/getList()Ljava/util/List;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/updateData(Ljava/util/List;Z)V
goto L1
L3:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
ifeq L6
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise/getList()Ljava/util/List;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/updateData(Ljava/util/List;Z)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
goto L1
L2:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
ifeq L7
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mAdapter Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter;
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment/getList()Ljava/util/List;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/updateData(Ljava/util/List;Z)V
L7:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
goto L1
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/MessageView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
goto L5
.limit locals 4
.limit stack 3
.end method
