.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/activity/base/BaseSearchActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$1
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$2
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$3
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$4$1
.inner class protected GetRecommendList inner com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList outer com/nd/android/u/contact/activity/base/BaseSearchActivity
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask outer com/nd/android/u/contact/activity/base/BaseSearchActivity

.field protected static final 'maxListSize' I = 500


.field protected static final 'maxSize' I = 20


.field protected 'adapter' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;

.field protected 'canLoadHeader' Z

.field protected 'commonList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;"

.field protected 'contractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field protected 'filter' Ljava/lang/String;

.field protected 'getMoreView' Landroid/widget/LinearLayout;

.field protected 'getMoreflag' Z

.field protected 'imm' Landroid/view/inputmethod/InputMethodManager;

.field protected 'inputly' Landroid/widget/LinearLayout;

.field protected 'isloading' Z

.field protected 'layoutRecommend' Landroid/widget/LinearLayout;

.field protected 'listView' Landroid/widget/ListView;

.field protected 'lvRecommend' Landroid/widget/ListView;

.field private 'mBackpackHasSend' Z

.field protected 'mGetRecommendList' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mGetRecommendListListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'mIsBackpackSendflower' Z

.field protected 'mSearchBarWidget' Lcom/product/android/ui/widget/SearchBarWidget;

.field protected 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field protected 'pageNo' I

.field protected final 'pos' I

.field protected 'recommendAdapter' Lcom/nd/android/u/contact/adapter/RecommendFriendAdapter;

.field protected 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/pos I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/isloading Z
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/canLoadHeader Z
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/filter Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mIsBackpackSendflower Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mBackpackHasSend Z
aload 0
new com/nd/android/u/contact/activity/base/BaseSearchActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$1/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/base/BaseSearchActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$2/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendListListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/base/BaseSearchActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$3/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method public final canToLoadHeader()Z
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/canLoadHeader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract doSearch(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask;)V
.end method

.method final getRecommend()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendList Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendList Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendList Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendList Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendListListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mGetRecommendList Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/setTitle()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_result_list I
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/SearchBarWidget
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/SearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/layoutRecommend I
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lvRecommend I
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/lvRecommend Landroid/widget/ListView;
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreView Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 4
.end method

.method protected final initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/getRecommend()V
aload 0
new com/nd/android/u/contact/adapter/SearchFriendAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mIsBackpackSendflower Z
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/<init>(Landroid/content/Context;Ljava/util/List;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/adapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/adapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 7
.end method

.method public final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
iconst_1
invokevirtual android/widget/ListView/setTextFilterEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method final moreSearchFriend()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/isloading Z
aload 0
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/filter Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/searchUser(ZLjava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 1
ldc "backpack_sendflower"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "backpack_sendflower"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mIsBackpackSendflower Z
L1:
aload 1
ldc "itemid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
ldc "itemid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
L2:
aload 1
ldc "sendCount"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
ldc "sendCount"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/search_contact I
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
lconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/clearFlowerBackPackMap()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 3
.end method

.method public final onSearchCancel()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/nd/android/u/contact/activity/base/BaseSearchActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$4/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
ldc2_w 50L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
return
.limit locals 1
.limit stack 4
.end method

.method public final onSearchChange(Ljava/lang/String;)V
aload 1
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
ldc "#"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
return
L1:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/onSearchCancel()V
return
L2:
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/pageNo I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/filter Ljava/lang/String;
aload 0
iconst_0
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/searchUser(ZLjava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method final searchUser(ZLjava/lang/String;)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreflag Z
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 3
aload 3
ldc "key"
aload 2
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 3
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public final selectedUserFid(JLjava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/mBackpackHasSend Z
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 4
aload 3
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 0
aload 4
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toBackpackSendFlower(Landroid/app/Activity;Lcom/product/android/commonInterface/contact/OapUserSimple;JI)V
return
.limit locals 5
.limit stack 5
.end method

.method public abstract setTitle()V
.end method

.method final showListView(Z)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/adapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/adapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
