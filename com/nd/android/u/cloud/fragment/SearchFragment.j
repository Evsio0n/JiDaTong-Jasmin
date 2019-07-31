.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/fragment/SearchFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/fragment/SearchFragment$1
.inner class private EndlessScrollListener inner com/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener outer com/nd/android/u/cloud/fragment/SearchFragment
.inner class private SearchAdapter inner com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter outer com/nd/android/u/cloud/fragment/SearchFragment
.inner class private SearchResultManager inner com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager outer com/nd/android/u/cloud/fragment/SearchFragment
.inner class private SearchTask inner com/nd/android/u/cloud/fragment/SearchFragment$SearchTask outer com/nd/android/u/cloud/fragment/SearchFragment
.inner class static final enum SearchType inner com/nd/android/u/cloud/fragment/SearchFragment$SearchType outer com/nd/android/u/cloud/fragment/SearchFragment

.field private static final 'SEARCH_TEXT' Ljava/lang/String; = "search_text"

.field private 'llSearching' Landroid/widget/LinearLayout;

.field private 'mAdapter' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;

.field private 'mBtnAddFriend' Landroid/widget/Button;

.field private 'mCurSearchType' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.field private 'mGroupSearchResultManager' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;

.field private 'mListView' Landroid/widget/ListView;

.field private 'mListener' Lcom/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener;

.field private 'mPspSearchResultManager' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchText' Ljava/lang/String;

.field private 'mTask' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;

.field private 'mTvSorryCantFindFriend' Landroid/widget/TextView;

.field private 'mTvYouHaventAddFriend' Landroid/widget/TextView;

.field private 'mUsrSearchResultManager' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;

.field private 'pbSearching' Landroid/widget/ProgressBar;

.field private 'tvSearching' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTvSorryCantFindFriend Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTvYouHaventAddFriend Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/mBtnAddFriend Landroid/widget/Button;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/pbSearching Landroid/widget/ProgressBar;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/tvSearching Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/llSearching Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTask Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mCurSearchType Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mCurSearchType Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/fragment/SearchFragment;ZZ)V
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/showFragmet(ZZ)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mUsrSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mUsrSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mGroupSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mGroupSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mPspSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mPspSearchResultManager Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static newInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/cloud/fragment/SearchFragment;
new com/nd/android/u/cloud/fragment/SearchFragment
dup
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/<init>()V
astore 2
aload 2
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "search_text"
aload 0
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/setArguments(Landroid/os/Bundle;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private showFragmet(ZZ)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/pbSearching Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTvSorryCantFindFriend Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTvYouHaventAddFriend Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mBtnAddFriend Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
iconst_1
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/showSearching(Z)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/showSearching(Z)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTvSorryCantFindFriend Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTvYouHaventAddFriend Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mBtnAddFriend Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/showSearching(Z)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 3
.limit stack 2
.end method

.method private showSearching(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/pbSearching Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/tvSearching Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/llSearching Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/pbSearching Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/tvSearching Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/llSearching Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private startSearch(Ljava/lang/String;)V
aload 0
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/none_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
putfield com/nd/android/u/cloud/fragment/SearchFragment/mCurSearchType Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
new com/nd/android/u/cloud/fragment/SearchFragment$SearchTask
dup
aload 0
aload 1
iconst_0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/lang/String;Z)V
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTask Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTask Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;
iconst_0
anewarray java/lang/Integer
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public changeSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchText Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTask Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mTask Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchTask;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/isTaskRunning()Z
ifne L1
L2:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
iconst_1
iconst_0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/showFragmet(ZZ)V
return
L3:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/fragment/SearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903437
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131626423
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/cloud/fragment/SearchFragment/pbSearching Landroid/widget/ProgressBar;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131626422
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/fragment/SearchFragment/tvSearching Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131626421
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/fragment/SearchFragment/llSearching Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131626005
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
aload 1
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
new com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Landroid/app/Activity;)V
putfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mAdapter Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener
dup
aload 0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;)V
putfield com/nd/android/u/cloud/fragment/SearchFragment/mListener Lcom/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListener Lcom/nd/android/u/cloud/fragment/SearchFragment$EndlessScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mListView Landroid/widget/ListView;
new com/nd/android/u/cloud/fragment/SearchFragment$1
dup
aload 0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$1/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;)V
invokevirtual android/widget/ListView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131627201
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTvSorryCantFindFriend Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131627202
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/fragment/SearchFragment/mTvYouHaventAddFriend Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getView()Landroid/view/View;
ldc_w 2131627203
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/fragment/SearchFragment/mBtnAddFriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mBtnAddFriend Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchText Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/changeSearchText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/contact/activity/AddFriendsActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getArguments()Landroid/os/Bundle;
ldc "search_text"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchText Ljava/lang/String;
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903884
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
putfield com/nd/android/u/cloud/fragment/SearchFragment/mSearchText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
