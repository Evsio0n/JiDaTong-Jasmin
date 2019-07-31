.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/RelationshipFragment
.super android/support/v4/app/Fragment
.implements android/widget/AdapterView$OnItemClickListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Landroid/support/v4/app/Fragment;Landroid/widget/AdapterView$OnItemClickListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.inner class private GetUserListTask inner com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask outer com/android/u/weibo/weibo/ui/fragment/RelationshipFragment
.inner class private RelationshipAdapter inner com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter outer com/android/u/weibo/weibo/ui/fragment/RelationshipFragment

.field private static final 'TAG' Ljava/lang/String; = "RelationshipFragment"

.field private 'footView' Landroid/view/View;

.field private 'getTask' Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;

.field private 'listView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'load' Landroid/view/View;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;

.field private 'noData' Landroid/view/View;

.field private 'page' I

.field private 'type' I

.field private 'uid' J

.field private 'userList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/userList Ljava/util/ArrayList;
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/page I
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$108(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/page I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/page I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/setView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/userList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/mAdapter Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static newInstance(JI)Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
new com/android/u/weibo/weibo/ui/fragment/RelationshipFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/<init>()V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "uid"
lload 0
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 4
ldc "type"
iload 2
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
aload 4
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/setArguments(Landroid/os/Bundle;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method private setView()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/userList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/userList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/noData Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/load Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/noData Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L2
.limit locals 1
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getArguments()Landroid/os/Bundle;
astore 2
aload 0
aload 2
ldc "uid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/uid J
aload 0
aload 2
ldc "type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/type I
aload 1
getstatic com/android/u/weibo/R$layout/weibo_following_follower_list I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
getstatic com/android/u/weibo/R$id/load I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/load Landroid/view/View;
aload 0
aload 2
getstatic com/android/u/weibo/R$id/noData I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/noData Landroid/view/View;
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/footView Landroid/view/View;
aload 0
aload 2
getstatic com/android/u/weibo/R$id/list_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
new com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/<init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/mAdapter Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/mAdapter Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/footView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
new com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask
dup
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/type I
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;Landroid/content/Context;JI)V
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 2
areturn
.limit locals 4
.limit stack 8
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/cancel(Z)Z
pop
L0:
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
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
checkcast com/product/android/commonInterface/weibo/Idol
astore 1
aload 1
ifnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 6
.limit stack 3
.end method

.method public onLastItemVisible()V
aload 0
new com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask
dup
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/type I
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;Landroid/content/Context;JI)V
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 8
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/cancel(Z)Z
pop
L0:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/page I
aload 0
new com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask
dup
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/type I
invokespecial com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;Landroid/content/Context;JI)V
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getTask Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 8
.end method
