.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/PostListActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$2
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$3
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$4

.field public static final 'TAG' Ljava/lang/String;

.field private 'communityName' Ljava/lang/String;

.field private 'dataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'isInit' Z

.field private 'mBackBtn' Landroid/widget/Button;

.field private 'mBtnCreat' Landroid/widget/Button;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mIsRestore' Z

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mPostListAdapter' Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mRefreshBtn' Lcom/nd/schoollife/ui/common/view/RefreshBtn;

.field private 'mSoftInput' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'postTask' Lcom/nd/schoollife/ui/post/task/PostProcessTask;

.field private 'resultPostList' Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;

.field private final 'sourceType' I

.field private 'teamOrCommunityId' J

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/activity/PostListActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/activity/PostListActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/dataList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mIsRestore Z
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
aload 0
bipush 16
putfield com/nd/schoollife/ui/post/activity/PostListActivity/sourceType I
aload 0
ldc ""
putfield com/nd/schoollife/ui/post/activity/PostListActivity/communityName Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)J
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/activity/PostListActivity;J)I
aload 0
lload 1
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/findPost(J)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/dataList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method private findPost(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/dataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/dataList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 4
aload 4
ifnull L2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lload 1
lcmp
ifne L2
iload 3
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_m1
ireturn
.limit locals 5
.limit stack 4
.end method

.method private getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getMaxActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
lstore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getMinActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
lstore 4
aload 0
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
bipush 15
aload 1
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_2
lload 4
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_3
bipush 30
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L0:
return
.limit locals 6
.limit stack 7
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_post_list I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mBackBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mBackBtn Landroid/widget/Button;
new com/nd/schoollife/ui/post/activity/PostListActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mBtnCreat Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mBtnCreat Landroid/widget/Button;
getstatic com/nd/schoollife/R$drawable/btn_community_edit_selector I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mBtnCreat Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mBtnCreat Landroid/widget/Button;
new com/nd/schoollife/ui/post/activity/PostListActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/communityName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/communityName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/post_list_listview I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/post/activity/PostListActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity$3/<init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
ifnonnull L2
aload 0
new com/nd/schoollife/ui/post/adapter/PostListAdapter
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
new com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/adapter/PostListAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
L2:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/refresh_btn I
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/RefreshBtn
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setRefreshOnClickListener(Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_post_list I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 1
.limit stack 7
.end method

.method protected initData(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
aload 1
ifnull L4
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mIsRestore Z
aload 0
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
aload 0
aload 1
ldc "STRING_TEAM_OR_COMMUNITY_NAME"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostListActivity/communityName Ljava/lang/String;
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
ldc2_w -1L
lcmp
ifne L6
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
ldc "\u4f20\u9012\u53c2\u6570\u4e3a\u7a7a"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
L3:
return
L4:
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "LONG_TEAM_OR_COMMUNITY_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/schoollife/ui/post/activity/PostListActivity/teamOrCommunityId J
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "STRING_TEAM_OR_COMMUNITY_NAME"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostListActivity/communityName Ljava/lang/String;
L5:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L6:
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
L7:
return
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/post/activity/PostListActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity$4/<init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
putfield com/nd/schoollife/ui/post/activity/PostListActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
return
.limit locals 2
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
iload 2
iconst_m1
if_icmpeq L17
L18:
return
L17:
iload 1
lookupswitch
100 : L0
101 : L3
102 : L5
103 : L19
999 : L15
default : L20
L20:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultCamera(Landroid/content/Intent;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultAt(Landroid/content/Intent;)V
L6:
return
L19:
aload 3
ifnull L18
L7:
aload 3
ldc "IS_DEL"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
aload 3
ldc "IS_PRAISE"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
aload 3
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/findPost(J)I
istore 2
L8:
iload 2
iconst_m1
if_icmpeq L18
iload 4
ifeq L21
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getList()Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/notifyDataSetChanged()V
L10:
return
L21:
iload 1
iconst_m1
if_icmpeq L18
L11:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/getList()Ljava/util/List;
astore 3
L12:
aload 3
ifnull L18
L13:
aload 3
invokeinterface java/util/List/size()I 0
iload 2
iconst_1
iadd
if_icmplt L18
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L18
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/notifyDataSetChanged()V
L14:
return
L15:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
L16:
return
.limit locals 5
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
L0:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L0
return
L0:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/post/activity/PostListActivity/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/postTask Lcom/nd/schoollife/ui/post/task/PostProcessTask;
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_common_loading I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/callPullDownToRefresh(Z)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
ifeq L1
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected onResume()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSaveInstanceState(Landroid/os/Bundle;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onStop()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onStop()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnonnull L0
L1:
return
L0:
iload 1
bipush 14
if_icmpeq L2
iload 1
bipush 15
if_icmpne L3
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L3
L2:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultPostList
ifeq L4
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultPostList
putfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
L4:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/isBusinessError()Z
ifne L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mPostListAdapter Lcom/nd/schoollife/ui/post/adapter/PostListAdapter;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getData()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMax_ts()J
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getMin_ts()J
iconst_1
invokevirtual com/nd/schoollife/ui/post/adapter/PostListAdapter/updateData(Ljava/util/List;JJZ)V
L6:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L7
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L8
L7:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostListActivity/isInit Z
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
return
L5:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/resultPostList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
goto L6
L8:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L9
L3:
iload 1
bipush 12
if_icmpne L1
aload 3
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L1
aload 3
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 2
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
ifeq L10
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L11
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 2
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/updateOperatorPanelCommentCount(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
L11:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSendResult(Z)V
return
L10:
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isBusinessError()Z
ifeq L11
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L11
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/post/activity/PostListActivity/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 4
.limit stack 7
.end method
