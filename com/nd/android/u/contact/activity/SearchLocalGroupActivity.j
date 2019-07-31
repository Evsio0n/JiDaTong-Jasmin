.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchLocalGroupActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$1
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$2
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$2$1
.inner class protected SearchGroupTask inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask outer com/nd/android/u/contact/activity/SearchLocalGroupActivity

.field protected 'adapter' Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;

.field protected 'filter' Ljava/lang/String;

.field protected 'imm' Landroid/view/inputmethod/InputMethodManager;

.field protected 'inputly' Landroid/widget/LinearLayout;

.field protected 'layoutRecommend' Landroid/widget/LinearLayout;

.field protected 'listView' Landroid/widget/ListView;

.field protected 'mGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field protected 'mSearchBarWidget' Lcom/product/android/ui/widget/SearchBarWidget;

.field protected 'mSearchGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mSearchGroupTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'no_data_list_foot_layout' Landroid/widget/LinearLayout;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/filter Ljava/lang/String;
aload 0
new com/nd/android/u/contact/activity/SearchLocalGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchLocalGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchLocalGroupActivity/doSearch(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask;)V
return
.limit locals 2
.limit stack 2
.end method

.method private doSearch(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask;)V
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/getKey()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/clearList()V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(Ljava/lang/String;)Ljava/util/List; 1
astore 6
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 3
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 4
aload 3
ifnonnull L0
aload 4
astore 2
L1:
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/size()I 0
ifle L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
aload 5
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
aload 6
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L0:
aload 3
astore 2
aload 4
ifnull L1
aload 3
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 3
astore 2
goto L1
L2:
aload 1
aload 6
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/setTempTotal(I)V
aload 1
aload 6
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/addAll(Ljava/util/List;)V
return
.limit locals 7
.limit stack 2
.end method

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/search_local_group I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_result_list I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/SearchBarWidget
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchBarWidget Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/SearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/layoutRecommend I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/layoutRecommend Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/layoutRecommend Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_user_list_foot_layout I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected final initComponentValue()V
aload 0
new com/nd/android/u/contact/adapter/SearchGroupAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mGroupList Ljava/util/List;
iconst_1
invokespecial com/nd/android/u/contact/adapter/SearchGroupAdapter/<init>(Landroid/content/Context;Ljava/util/List;I)V
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 6
.end method

.method public final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
iconst_1
invokevirtual android/widget/ListView/setTextFilterEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/search_contact I
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public final onSearchCancel()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/nd/android/u/contact/activity/SearchLocalGroupActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchLocalGroupActivity$2/<init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
ldc2_w 50L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
return
.limit locals 1
.limit stack 4
.end method

.method public final onSearchChange(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/onSearchCancel()V
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/filter Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/searchGroup(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final searchGroup(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/<init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "key"
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public final showListView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mGroupList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/adapter Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchGroupAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/listView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
