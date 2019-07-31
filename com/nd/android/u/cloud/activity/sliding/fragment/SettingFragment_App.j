.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App
.super android/support/v4/app/Fragment
.implements com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1
.inner class private SynAppInfoTask inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask outer com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App

.field 'allAppList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;>;>;"

.field private 'appList' Landroid/widget/ListView;

.field public 'isInited' Z

.field private 'listAdapter' Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;

.field private 'mContext' Landroid/content/Context;

.field protected 'mDropDownPopWindow' Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;

.field private 'mRefreshImage' Landroid/widget/ImageView;

.field protected 'm_dialog' Landroid/app/ProgressDialog;

.field protected 'showBegin' Z

.field protected 'synAppInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synAppInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/isInited Z
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
aload 0
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private classificationApp(Ljava/util/List;)Ljava/util/List;
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;)Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;>;>;"
aconst_null
astore 2
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
aload 2
astore 1
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 4
aload 4
getfield com/product/android/commonInterface/contact/OapApp/displayType Z
ifeq L3
aload 0
aload 4
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/hasThisType(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 4
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/putOapAppToTypeList(Lcom/product/android/commonInterface/contact/OapApp;)V
goto L1
L0:
aconst_null
areturn
L4:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 4
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L3:
aload 1
astore 2
aload 1
ifnonnull L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L5:
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
astore 1
goto L1
L2:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
areturn
.limit locals 6
.limit stack 3
.end method

.method private initComponent()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/view Landroid/view/View;
ldc_w 2131625951
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mRefreshImage Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/view Landroid/view/View;
ldc_w 2131625953
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/appList Landroid/widget/ListView;
aload 0
new com/nd/android/u/cloud/ui/adapter/AppListViewAdapter
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
invokespecial com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/appList Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/cloud/view/widge/DropDownPopWindow
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mRefreshImage Landroid/widget/ImageView;
invokespecial com/nd/android/u/cloud/view/widge/DropDownPopWindow/<init>(Landroid/content/Context;Landroid/view/View;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mDropDownPopWindow Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;
return
.limit locals 1
.limit stack 5
.end method

.method private onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method private refreshAdapter()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/ui/adapter/AppListViewAdapter
dup
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
invokespecial com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/appList Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
bipush 9
invokestatic com/nd/android/u/contact/business/SynOapApp/getAppInfoByDB(I)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
astore 1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
checkcast java/util/Vector
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppAndTypeList(Ljava/util/Vector;)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppAndTypeList()Ljava/util/Vector;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/classificationApp(Ljava/util/List;)Ljava/util/List;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 4
.end method

.method private synAppInfo()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1;)V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public canToLoadHeader()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hasThisType(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public init()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getResources()Landroid/content/res/Resources;
ldc_w 2131493714
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getResources()Landroid/content/res/Resources;
ldc_w 2131495562
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfo()V
return
.limit locals 1
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getActivity()Landroid/support/v4/app/FragmentActivity;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
ldc_w 2130903481
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/view Landroid/view/View;
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/init()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/getList()Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/listAdapter Lcom/nd/android/u/cloud/ui/adapter/AppListViewAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppListViewAdapter/notifyDataSetChanged()V
L0:
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
return
.limit locals 2
.limit stack 1
.end method

.method public putOapAppToTypeList(Lcom/product/android/commonInterface/contact/OapApp;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/allAppList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map
astore 3
aload 3
aload 1
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 3
aload 1
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
return
.limit locals 4
.limit stack 2
.end method

.method public selectedUserFid(JLjava/lang/String;)V
return
.limit locals 4
.limit stack 0
.end method
