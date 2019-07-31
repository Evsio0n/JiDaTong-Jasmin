.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspSearchFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$1
.inner class private EndlessScrollListener inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment
.inner class private SearchAdapter inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment
.inner class private SearchResultManager inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment
.inner class private SearchTask inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment

.field private static final 'SEARCH_TEXT' Ljava/lang/String; = "search_text"

.field public static final 'SEARCH_TYPE_NONE' I = 0


.field public static final 'SEARCH_TYPE_PSP' I = 1


.field private 'llSearching' Landroid/widget/LinearLayout;

.field private 'mAdapter' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;

.field private 'mCurSearchType' I

.field private 'mListView' Landroid/widget/ListView;

.field private 'mListener' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener;

.field private 'mPspSearchResultManager' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchText' Ljava/lang/String;

.field private 'mTask' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;

.field private 'mTvSorryCantFindPsp' Landroid/widget/TextView;

.field private 'pbSearching' Landroid/widget/ProgressBar;

.field private 'tvSearching' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTvSorryCantFindPsp Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/pbSearching Landroid/widget/ProgressBar;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/tvSearching Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/llSearching Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTask Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mCurSearchType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;I)I
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mCurSearchType I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;ZZ)V
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/showFragmet(ZZ)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mPspSearchResultManager Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mPspSearchResultManager Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static newInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/<init>()V
astore 2
aload 2
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
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
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/setArguments(Landroid/os/Bundle;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private showFragmet(ZZ)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/pbSearching Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTvSorryCantFindPsp Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/showSearching(Z)V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
iconst_0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/showSearching(Z)V
return
L0:
aload 0
getstatic com/nd/android/u/chat/R$string/search_psp_faild_format I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTvSorryCantFindPsp Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTvSorryCantFindPsp Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
iconst_0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/showSearching(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 4
.limit stack 5
.end method

.method private showSearching(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/pbSearching Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/tvSearching Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/llSearching Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/pbSearching Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/tvSearching Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/llSearching Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private startSearch(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mCurSearchType I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask
dup
aload 0
aload 1
iconst_0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/lang/String;Z)V
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTask Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTask Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;
iconst_0
anewarray java/lang/Integer
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public changeSearchText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTask Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;
ifnull L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTask Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/isTaskRunning()Z
ifne L1
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
iconst_1
iconst_0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/showFragmet(ZZ)V
return
L3:
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/startSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/list_header_middle_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pb_searching I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/pbSearching Landroid/widget/ProgressBar;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_searching I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/tvSearching Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/ll_searching I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/llSearching Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
aload 1
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListener Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListener Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mListView Landroid/widget/ListView;
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)V
invokevirtual android/widget/ListView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_sorry_cant_find_psp I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mTvSorryCantFindPsp Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/changeSearchText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getArguments()Landroid/os/Bundle;
ldc "search_text"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/psp_search_list I
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
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/mSearchText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
