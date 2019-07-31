.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1
.inner class inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$2
.inner class inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$3
.inner class public RefreshListTask inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask outer com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity

.field protected static final 'PAGESIZE' I = 10


.field private 'mAdapter' Lcom/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter;

.field private 'mHasMoreData' Z

.field private 'mListNewGetUser' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"

.field private 'mListUser' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"

.field protected 'mRefreshTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'mlistView' Lcom/nd/android/u/ui/widge/ScrollListView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mHasMoreData Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mListUser Ljava/util/List;
aload 0
new com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$3/<init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mListUser Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mListNewGetUser Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mListNewGetUser Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mHasMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)Lcom/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private clearUnreadMessageCount()V
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
checkcast com/nd/android/u/bean4xy/AppContactItem
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/AppContactItem/setCode(Ljava/lang/String;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 1
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/clearUnreadCount(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903771
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/refreshList()V
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/clearUnreadMessageCount()V
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131626944
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/ScrollListView
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
aconst_null
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
new com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mAdapter Lcom/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setAdapter(Landroid/widget/BaseAdapter;)V
aload 0
ldc_w 2131493064
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494171
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493524
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493747
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setStatusTitles([Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
new com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$1/<init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setonRefreshListener(Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
new com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$2/<init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public refreshList()V
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mHasMoreData Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mlistView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/onRefreshComplete()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask/<init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
