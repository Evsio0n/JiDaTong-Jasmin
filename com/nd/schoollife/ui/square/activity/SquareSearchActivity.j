.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/SquareSearchActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements android/text/TextWatcher
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements android/widget/AbsListView$OnScrollListener
.inner class inner com/nd/schoollife/ui/square/activity/SquareSearchActivity$1

.field private static final 'MAX_POST_SIZE' I = 10


.field private static final 'MAX_SCOPE_SIZE' I = 3


.field private static final 'MAX_SEARCH_TEXT_SIZE' I = 20


.field private static final 'PAGE_SIZE' I = 20


.field private 'isNeedCommunity' Z

.field private 'mAdapter' Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;

.field private 'mClearBtn' Landroid/widget/Button;

.field private 'mContentRL' Landroid/view/View;

.field private 'mCurKey' Ljava/lang/String;

.field private 'mCurPage' I

.field private 'mEditText' Landroid/widget/EditText;

.field private 'mInfoLV' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mOnlyDataType' I

.field private 'mSearchBtn' Landroid/widget/ImageView;

.field private 'mSoftUtil' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurPage I
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/isNeedCommunity Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/activity/SquareSearchActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/activity/SquareSearchActivity;Ljava/lang/String;)Z
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/searchData(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method private disableUpToRefresh()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getFixedCommunityData(Ljava/util/List;I)Ljava/util/List;
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;I)Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
aload 1
ifnonnull L0
L1:
aload 1
areturn
L0:
aload 1
invokeinterface java/util/List/size()I 0
iload 2
if_icmple L1
aload 1
iconst_0
iload 2
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private getFixedPostData(Ljava/util/List;I)Ljava/util/List;
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;>;I)Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;>;"
aload 1
ifnonnull L0
L1:
aload 1
areturn
L0:
aload 1
invokeinterface java/util/List/size()I 0
iload 2
if_icmple L1
aload 1
iconst_0
iload 2
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private getFixedTeamData(Ljava/util/List;I)Ljava/util/List;
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;I)Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"
aload 1
ifnonnull L0
L1:
aload 1
areturn
L0:
aload 1
invokeinterface java/util/List/size()I 0
iload 2
if_icmple L1
aload 1
iconst_0
iload 2
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private handleFirstGetData(Ljava/lang/Object;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
instanceof com/nd/schoollife/common/bean/result/ResultSearchComplex2
ifeq L1
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultSearchComplex2
astore 5
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getPostList()Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
astore 1
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getTeamList()Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
astore 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSearchComplex2/getCommunityList()Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
astore 5
iconst_0
istore 3
iload 3
istore 2
aload 1
ifnull L2
iload 3
istore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
ifnull L2
iload 3
istore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L2
aload 0
iconst_3
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
iconst_0
iconst_1
iadd
istore 2
L2:
iload 2
istore 3
aload 4
ifnull L3
iload 2
istore 3
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
ifnull L3
iload 2
istore 3
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L3
aload 0
bipush 8
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
iload 2
iconst_1
iadd
istore 3
L3:
iload 3
istore 2
aload 5
ifnull L4
iload 3
istore 2
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
ifnull L4
iload 3
istore 2
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L4
aload 0
bipush 16
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
iload 3
iconst_1
iadd
istore 2
L4:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurKey Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setKey(Ljava/lang/String;)V
iload 2
iconst_1
if_icmpne L5
iconst_1
istore 2
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
lookupswitch
3 : L6
8 : L7
16 : L8
default : L9
L9:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowGroupTitle(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowMoreBtn(Z)V
iload 2
ifeq L10
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/hasMoreData()V
return
L6:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
astore 4
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 4
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setPostData(Ljava/util/List;I)V
aload 4
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L9
iconst_0
istore 2
goto L9
L7:
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setTeamData(Ljava/util/List;I)V
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L9
iconst_0
istore 2
goto L9
L8:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setComunityData(Ljava/util/List;I)V
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L9
iconst_0
istore 2
goto L9
L10:
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/noMoreData()V
return
L5:
iload 2
iconst_1
if_icmple L11
aload 1
ifnull L12
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
bipush 10
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/getFixedPostData(Ljava/util/List;I)Ljava/util/List;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setPostData(Ljava/util/List;I)V
L12:
aload 4
ifnull L13
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
iconst_3
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/getFixedTeamData(Ljava/util/List;I)Ljava/util/List;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setTeamData(Ljava/util/List;I)V
L13:
aload 5
ifnull L14
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
iconst_3
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/getFixedCommunityData(Ljava/util/List;I)Ljava/util/List;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setComunityData(Ljava/util/List;I)V
L14:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowGroupTitle(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
iconst_1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setShowMoreBtn(Z)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/disableUpToRefresh()V
return
L11:
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/disableUpToRefresh()V
return
.limit locals 6
.limit stack 4
.end method

.method private handleLoadMoreData(Ljava/lang/Object;I)V
aload 1
ifnonnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
L1:
return
L0:
iconst_0
istore 4
iload 4
istore 3
iload 2
tableswitch 768
L2
L3
L4
L5
default : L6
L6:
iload 4
istore 3
L3:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
iload 3
ifne L1
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/noMoreData()V
return
L2:
iload 4
istore 3
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/ResultSearchPost
ifeq L3
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultSearchPost
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultSearchPost/getPosts()Ljava/util/ArrayList;
astore 1
iload 4
istore 3
aload 1
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addPostData(Ljava/util/List;)V
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmplt L7
iconst_1
istore 3
L8:
goto L3
L7:
iconst_0
istore 3
goto L8
L4:
iload 4
istore 3
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L3
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
astore 1
iload 4
istore 3
aload 1
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addTeamData(Ljava/util/List;)V
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmplt L9
iconst_1
istore 3
L10:
goto L3
L9:
iconst_0
istore 3
goto L10
L5:
iload 4
istore 3
aload 1
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L3
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 1
iload 4
istore 3
aload 1
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/addCommunityData(Ljava/util/List;)V
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmplt L11
iconst_1
istore 3
L12:
goto L3
L11:
iconst_0
istore 3
goto L12
.limit locals 5
.limit stack 2
.end method

.method private hasMoreData()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private noMoreData()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setHasMoreDataFlag(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private searchData(Ljava/lang/String;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCtx Landroid/content/Context;
ldc "\u641c\u7d22\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurKey Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/isNeedCommunity Z
ifeq L1
aload 0
aload 1
sipush 772
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/startTask(Ljava/lang/String;I)V
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/setKey(Ljava/lang/String;)V
L3:
iconst_1
ireturn
L1:
aload 0
aload 1
sipush 773
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/startTask(Ljava/lang/String;I)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method private showDataView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mContentRL Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_4
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mContentRL Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private startLoadMoreTask(Ljava/lang/String;I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurPage I
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCtx Landroid/content/Context;
iload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_2
ldc "20"
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method private startTask(Ljava/lang/String;I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSearchBtn Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setClickable(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/clearData()V
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/removeFootView()Z
pop
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCtx Landroid/content/Context;
iload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_5
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
dup
iconst_1
ldc "1"
aastore
dup
iconst_2
ldc "20"
aastore
dup
iconst_3
ldc "1"
aastore
dup
iconst_4
ldc "20"
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
ifnull L0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mClearBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mClearBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_search I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_square_search_nodata I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mContentRL Landroid/view/View;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_square_search_bar I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mClearBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_square_search_bar I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSearchBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSearchBtn Landroid/widget/ImageView;
iconst_1
invokevirtual android/widget/ImageView/setClickable(Z)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/et_square_search_bar I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSoftUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new com/nd/schoollife/common/utils/MyLengthFilter
dup
bipush 20
invokespecial com/nd/schoollife/common/utils/MyLengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
iconst_3
invokevirtual android/widget/EditText/setImeOptions(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSoftUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/showSoftInput(Landroid/view/View;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/lv_square_search I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
new com/nd/schoollife/ui/square/adapter/SearchListAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
return
.limit locals 1
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "is_need_comm"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/isNeedCommunity Z
L0:
return
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
new com/nd/schoollife/ui/square/activity/SquareSearchActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity$1/<init>(Lcom/nd/schoollife/ui/square/activity/SquareSearchActivity;)V
invokevirtual android/widget/EditText/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mClearBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSearchBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mInfoLV Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_square_search_cancel I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/ll_square_search I
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_square_search_bar I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_square_search_cancel I
if_icmpne L2
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareSearchActivity/finish()V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/iv_square_search_bar I
if_icmpne L1
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/searchData(Ljava/lang/String;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
return
.limit locals 2
.limit stack 0
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mOnlyDataType I
lookupswitch
3 : L0
8 : L1
16 : L2
default : L3
L3:
return
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurKey Ljava/lang/String;
sipush 768
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/startLoadMoreTask(Ljava/lang/String;I)V
return
L1:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurKey Ljava/lang/String;
sipush 770
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/startLoadMoreTask(Ljava/lang/String;I)V
return
L2:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mCurKey Ljava/lang/String;
sipush 771
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/startLoadMoreTask(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSoftUtil Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mEditText Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
tableswitch 768
L0
L1
L0
L0
L2
L2
default : L1
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mSearchBtn Landroid/widget/ImageView;
iconst_1
invokevirtual android/widget/ImageView/setClickable(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/getCount()I
ifle L3
aload 0
iconst_1
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/showDataView(Z)V
L4:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareSearchActivity/mAdapter Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/notifyDataSetChanged()V
return
L2:
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/handleFirstGetData(Ljava/lang/Object;)V
goto L1
L0:
aload 0
aload 3
iload 1
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/handleLoadMoreData(Ljava/lang/Object;I)V
goto L1
L3:
aload 0
iconst_0
invokespecial com/nd/schoollife/ui/square/activity/SquareSearchActivity/showDataView(Z)V
goto L4
.limit locals 4
.limit stack 3
.end method
