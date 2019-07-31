.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MyTabActivity
.super android/support/v4/app/FragmentActivity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Landroid/support/v4/app/FragmentActivity;Landroid/view/View$OnClickListener;Landroid/widget/AdapterView$OnItemClickListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.inner class inner com/nd/android/u/cloud/activity/MyTabActivity$1
.inner class private GetMyTaskData inner com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData outer com/nd/android/u/cloud/activity/MyTabActivity

.field private static final 'SHOW_LENGTH' I = 500


.field private 'curriculumApp' Lcom/product/android/commonInterface/contact/OapApp;

.field private 'isFirst' Z

.field private 'isShowCurriculum' Z

.field private 'mAppMarketIcon' Landroid/widget/TextView;

.field private 'mBackpackIcon' Landroid/widget/TextView;

.field private 'mGetMyTaskData' Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;

.field private 'mHeaderView' Landroid/view/View;

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mListViewAdapter' Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;

.field private 'mSetting' Landroid/widget/ImageView;

.field private 'mUid' J

.field private 'mUserIcon' Landroid/widget/ImageView;

.field private 'mUserName' Landroid/widget/TextView;

.field private 'myTaskItem' Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/MyTabActivity/isFirst Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MyTabActivity/isShowCurriculum Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/myTaskItem Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListViewAdapter Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getCurriculum()Lcom/product/android/commonInterface/contact/OapApp;
.catch java/lang/NumberFormatException from L0 to L1 using L2
aconst_null
astore 3
aconst_null
astore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
getstatic com/nd/android/u/cloud/XYExtentConfig/TEACHER_CURRICULUM_APPID Ljava/lang/String;
astore 3
getstatic com/nd/android/u/cloud/XYExtentConfig/TEACHER_CURRICULUM_CODE Ljava/lang/String;
astore 4
L4:
aload 3
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L5
aload 4
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L5
iconst_0
istore 1
L0:
aload 3
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
L1:
iload 2
istore 1
L6:
iload 1
aload 4
invokestatic com/nd/android/u/contact/business/SynOapApp/getOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
areturn
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L4
getstatic com/nd/android/u/cloud/XYExtentConfig/STUDENT_CURRICULUM_APPID Ljava/lang/String;
astore 3
getstatic com/nd/android/u/cloud/XYExtentConfig/STUDENT_CURRICULUM_CODE Ljava/lang/String;
astore 4
goto L4
L2:
astore 3
aload 3
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L6
L5:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method private initData()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/isRefreshing()Z
ifeq L1
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/cloud/activity/MyTabActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MyTabActivity;)V
ldc2_w 500L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L1:
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/cancel(Z)Z
pop
L2:
aload 0
new com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/<init>(Lcom/nd/android/u/cloud/activity/MyTabActivity;Lcom/nd/android/u/cloud/activity/MyTabActivity$1;)V
putfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mSetting Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mUserIcon Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mBackpackIcon Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mAppMarketIcon Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/isShowCurriculum Z
ifeq L0
aload 0
ldc_w 2131626088
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 0
ldc_w 2130903514
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/setContentView(I)V
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
ldc_w 2130903515
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
ldc_w 2131626084
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mSetting Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
ldc_w 2131626085
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mUserIcon Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
ldc_w 2131626086
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mUserName Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
ldc_w 2131626090
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mBackpackIcon Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
ldc_w 2131626091
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mAppMarketIcon Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626082
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/getCurriculum()Lcom/product/android/commonInterface/contact/OapApp;
putfield com/nd/android/u/cloud/activity/MyTabActivity/curriculumApp Lcom/product/android/commonInterface/contact/OapApp;
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/curriculumApp Lcom/product/android/commonInterface/contact/OapApp;
ifnull L1
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/MyTabActivity/isShowCurriculum Z
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/isShowCurriculum Z
ifeq L2
aload 0
ldc_w 2131626088
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131626089
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
getstatic com/nd/android/u/cloud/XYExtentConfig/MY_STUDENT_CURRICULUM_URL Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/MyTabActivity/isShowCurriculum Z
goto L1
L2:
aload 0
ldc_w 2131626088
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131626089
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method private initViewValue()V
aload 0
new com/nd/android/u/cloud/ui/adapter/MyTabListAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MyTabActivity/mListViewAdapter Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListViewAdapter Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/nd/android/u/cloud/activity/MyTabActivity/mUid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUserName()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mUserName Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
new com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean
dup
invokespecial com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/<init>()V
putfield com/nd/android/u/cloud/activity/MyTabActivity/myTaskItem Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/myTaskItem Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494344
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/setItemName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListViewAdapter Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/myTaskItem Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/addItemValueList(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
ldc_w 2131626084
if_icmpne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/SettingActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
iload 2
ldc_w 2131626085
if_icmpne L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
return
L2:
iload 2
ldc_w 2131626090
if_icmpne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
ldc_w 2131626091
if_icmpne L4
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/AppMarketActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
return
L4:
iload 2
ldc_w 2131626088
if_icmpne L1
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/curriculumApp Lcom/product/android/commonInterface/contact/OapApp;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/curriculumApp Lcom/product/android/commonInterface/contact/OapApp;
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
astore 1
L6:
aload 1
ifnull L7
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L7
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L8
aload 1
ldc "\\{SID\\}"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "\\{UID\\}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L9:
new android/content/Intent
dup
aload 0
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
ldc "\u8bfe\u7a0b\u8868"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
return
L5:
getstatic com/nd/android/u/cloud/XYExtentConfig/MY_STUDENT_CURRICULUM_URL Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L10
getstatic com/nd/android/u/cloud/XYExtentConfig/MY_STUDENT_CURRICULUM_URL Ljava/lang/String;
astore 1
goto L6
L10:
ldc "\u8bfe\u8868\u541b\u5df2\u88ab\u5916\u661f\u4eba\u52ab\u6301\uff01"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L8:
new java/lang/StringBuffer
dup
aload 1
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "/unitId/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
ldc "/uid/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 1
goto L9
L7:
ldc "\u8bfe\u8868\u541b\u592a\u5fd9\u4e86\uff0c\u8fc7\u4f1a\u518d\u6765\u5427\uff01"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/initView()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/initViewValue()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/cancel(Z)Z
pop
L0:
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MyTabActivity/mGetMyTaskData Lcom/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData;
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
isub
ifne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/tast/main/activity/TaskMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 6
.limit stack 5
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onNewIntent(Landroid/content/Intent;)V
aload 1
ldc "my_tab_need_refresh"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/getCurriculum()Lcom/product/android/commonInterface/contact/OapApp;
putfield com/nd/android/u/cloud/activity/MyTabActivity/curriculumApp Lcom/product/android/commonInterface/contact/OapApp;
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onResume()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onResume()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/isFirst Z
ifne L0
aload 0
invokespecial com/nd/android/u/cloud/activity/MyTabActivity/initData()V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mUid J
iconst_3
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity/mUserIcon Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MyTabActivity/isFirst Z
goto L1
.limit locals 1
.limit stack 5
.end method
