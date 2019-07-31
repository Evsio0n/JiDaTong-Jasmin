.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/ContactListActivity
.super com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/widget/AbsListView$OnScrollListener
.implements android/text/TextWatcher
.inner class inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$1
.inner class private FriendListAdapter inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter outer com/android/u/weibo/weibo/ui/activity/ContactListActivity
.inner class private GetSearchFriendTask inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask outer com/android/u/weibo/weibo/ui/activity/ContactListActivity

.field private static final 'PAGE_SIZE' I = 50


.field private 'currentPage' I

.field private 'footView' Landroid/view/View;

.field private 'keyword' Ljava/lang/String;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;

.field private 'mEtKeyword' Landroid/widget/EditText;

.field private 'mSearchcontractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'mlistView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mtvNoFriendTip' Landroid/widget/TextView;

.field private 'searchTask' Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/<init>()V
aload 0
ldc ""
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/keyword Ljava/lang/String;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/currentPage I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mSearchcontractList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mSearchcontractList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/keyword Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$204(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/currentPage I
iconst_1
iadd
istore 1
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/currentPage I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity/doSearch(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mtvNoFriendTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doSearch(Ljava/lang/String;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/keyword Ljava/lang/String;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/currentPage I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/searchTask Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/searchTask Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/searchTask Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/cancel(Z)Z
pop
L0:
aload 0
new com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask
dup
aload 0
aload 1
iload 2
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/lang/String;I)V
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/searchTask Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/searchTask Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method protected handleBackButtonClick()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mEtKeyword Landroid/widget/EditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/weibo_at_search_list I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/initHeadComponent(I)V
aload 0
getstatic com/android/u/weibo/R$string/at_who I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/setHeadTitle(I)V
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 0
getstatic com/android/u/weibo/R$id/people_search_result_list I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_no_friend_tip I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mtvNoFriendTip Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/ContactListActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/footView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/footView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setSelected(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
new com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mlistView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/keyword I
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mEtKeyword Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mEtKeyword Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/keyword Ljava/lang/String;
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity/doSearch(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mEtKeyword Landroid/widget/EditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/chat/SearchContract
astore 1
aload 1
ifnull L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "name"
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/finish()V
L0:
return
.limit locals 6
.limit stack 5
.end method

.method protected onPause()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
iconst_1
if_icmpne L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity/mEtKeyword Landroid/widget/EditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 0
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/ContactListActivity/doSearch(Ljava/lang/String;I)V
return
.limit locals 5
.limit stack 3
.end method
