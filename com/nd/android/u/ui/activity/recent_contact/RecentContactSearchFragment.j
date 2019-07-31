.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1
.inner class private EndlessScrollListener inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class private static RecentContactSearchAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1
.inner class private static final enum RowType inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class private static SearchResult inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class private SearchTask inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment

.field private static final 'FORWARDING_PARAM' Ljava/lang/String; = "forwarding_param"

.field private static final 'SEARCH_TEXT' Ljava/lang/String; = "search_text"

.field private 'mAdapter' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;

.field private 'mForwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field private 'mListView' Landroid/widget/ListView;

.field private 'mListener' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchText' Ljava/lang/String;

.field private 'mTask' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mTask Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static newInstance(Lcom/nd/android/u/controller/bean/contact/ForwardingParam;Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
dup
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/<init>()V
astore 3
aload 3
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "forwarding_param"
aload 0
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 2
ldc "search_text"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 3
aload 2
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/setArguments(Landroid/os/Bundle;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method private startSearch(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/updateSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListener Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/setSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListener Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;
iconst_0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/setPageNum(I)V
aload 0
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask
dup
aload 0
aload 1
iconst_0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;Ljava/lang/String;Z)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mTask Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mTask Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;
iconst_1
anewarray java/lang/Integer
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public changeSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/updateSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListener Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/setSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mTask Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mTask Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/isTaskRunning()Z
ifne L1
L2:
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public cleanSearchResult()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListView Landroid/widget/ListView;
aload 0
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter
dup
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/<init>(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;Ljava/lang/String;)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListener Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListener Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mListView Landroid/widget/ListView;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)V
invokevirtual android/widget/ListView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/changeSearchText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/getArguments()Landroid/os/Bundle;
ldc "forwarding_param"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/controller/bean/contact/ForwardingParam
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/getArguments()Landroid/os/Bundle;
ldc "search_text"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/recent_contact_search_list I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public setSearchKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/mSearchText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
