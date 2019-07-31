.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MainFrameActivty
.super com/nd/android/u/cloud/activity/MainReceiveFragmentActivity
.implements com/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum
.implements com/nd/android/u/contact/listener/ContactObserver
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$1
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$2
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$3
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$4
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5$1
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$6
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$7
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$8
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$9
.inner class GetEnrolTime inner com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime outer com/nd/android/u/cloud/activity/MainFrameActivty
.inner class GetStudentCreateTime inner com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime outer com/nd/android/u/cloud/activity/MainFrameActivty
.inner class JudgeSenior inner com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior outer com/nd/android/u/cloud/activity/MainFrameActivty
.inner class private getExtensionUserInfoTask inner com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask outer com/nd/android/u/cloud/activity/MainFrameActivty

.field private static final 'CURRENTTAB' Ljava/lang/String; = "xyConfig"

.field public static final 'INDEX_LIFE' I = 2


.field public static final 'INDEX_MESSAGE' I = 3


.field public static final 'INDEX_MY' I = 4


.field public static final 'INDEX_NEWS' I = 0


.field public static final 'INDEX_WEIBO' I = 1


.field protected static final 'MY_TAB_NEED_REFRESH' Ljava/lang/String; = "my_tab_need_refresh"

.field protected static final 'TAG' Ljava/lang/String; = "MainFrameActivty"

.field protected static final 'normal_color' I

.field protected static final 'press_color' I

.field 'backCount' I

.field private 'bottomLayout' Landroid/widget/LinearLayout;

.field protected 'container' Landroid/widget/LinearLayout;

.field protected 'countLifeText' Landroid/widget/TextView;

.field protected 'countMsgText' Landroid/widget/TextView;

.field protected 'currentTab' I

.field 'currentTime' J

.field private 'footOnClickListener' Landroid/view/View$OnClickListener;

.field protected 'ivCampusImg' Landroid/widget/ImageView;

.field protected 'ivLifeboImg' Landroid/widget/ImageView;

.field protected 'ivMessageImg' Landroid/widget/ImageView;

.field protected 'ivMyImg' Landroid/widget/ImageView;

.field protected 'ivWeiboImg' Landroid/widget/ImageView;

.field private 'layoutCampus' Landroid/widget/LinearLayout;

.field private 'layoutMessage' Landroid/widget/RelativeLayout;

.field private 'layoutMy' Landroid/widget/RelativeLayout;

.field private 'layoutWeibo' Landroid/widget/LinearLayout;

.field private 'mChangeMainBottom' Lcom/nd/schoollife/common/receiver/ChangeMainBottom;

.field private 'mCheckinImgManager' Lcom/nd/android/u/cloud/manager/CheckinImgManager;

.field private 'mFriendCycleTabNeddRefresh' Z

.field private 'mIntentService' Landroid/content/Intent;

.field private 'mMsgObserver' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'mMyTabNeedRefresh' Z

.field private 'myHandler' Landroid/os/Handler;

.field protected 'preTime' J

.field protected 'setNewImg' Landroid/widget/ImageView;

.field protected 'tvCampusText' Landroid/widget/TextView;

.field protected 'tvLifeText' Landroid/widget/TextView;

.field protected 'tvMessageText' Landroid/widget/TextView;

.field protected 'tvMyText' Landroid/widget/TextView;

.field protected 'tvWeiboText' Landroid/widget/TextView;

.field private 'windowManager' Landroid/view/WindowManager;

.method static <clinit>()V
sipush 248
sipush 178
bipush 44
invokestatic android/graphics/Color/rgb(III)I
putstatic com/nd/android/u/cloud/activity/MainFrameActivty/press_color I
sipush 136
sipush 134
sipush 149
invokestatic android/graphics/Color/rgb(III)I
putstatic com/nd/android/u/cloud/activity/MainFrameActivty/normal_color I
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/<init>()V
aload 0
iconst_2
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
aload 0
lconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/preTime J
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mFriendCycleTabNeddRefresh Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mMyTabNeedRefresh Z
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MainFrameActivty/windowManager Landroid/view/WindowManager;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/backCount I
aload 0
lconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTime J
aload 0
new com/nd/android/u/cloud/activity/MainFrameActivty$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$2/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
putfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/MainFrameActivty$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$4/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
putfield com/nd/android/u/cloud/activity/MainFrameActivty/myHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/cloud/activity/MainFrameActivty$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$5/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mMsgObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
return
.limit locals 1
.limit stack 4
.end method

.method private AddNewFunctionGuide()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
ldc_w 16908290
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
iconst_0
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/IsActivityGuided(Landroid/content/Context;Ljava/lang/String;)Z
ifne L1
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
astore 1
aload 1
instanceof android/widget/FrameLayout
ifeq L1
aload 1
checkcast android/widget/FrameLayout
astore 1
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 3
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
pop
aload 3
ldc_w 2130903548
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
ldc_w 2130903549
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
new com/nd/android/u/cloud/activity/MainFrameActivty$8
dup
aload 0
aload 1
aload 3
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$8/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Landroid/widget/FrameLayout;Landroid/view/View;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
new com/nd/android/u/cloud/activity/MainFrameActivty$9
dup
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$9/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
aload 2
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 7
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)J
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/getLocalTime()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MainFrameActivty;J)V
aload 0
lload 1
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/setSeniorParam(J)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mMyTabNeedRefresh Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mFriendCycleTabNeddRefresh Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/myHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private clearContactNewMsg()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
getstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 1
getstatic com/nd/android/u/cloud/XYExtentConfig/CONTACT_NEW_JUNIOR_REQUEST_CODE Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20070
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method private getLocalTime()J
invokestatic com/product/android/utils/TimeUtils/getCurrentYear()Ljava/lang/String;
astore 7
invokestatic java/lang/System/currentTimeMillis()J
lstore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-08-30"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getTimeStamp(Ljava/lang/String;)J
lstore 3
lload 3
lstore 1
lload 5
lload 3
lcmp
ifge L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-08-30"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getTimeStamp(Ljava/lang/String;)J
lstore 1
L0:
lload 1
lreturn
.limit locals 8
.limit stack 4
.end method

.method private initData()V
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/InitGroupDataRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/InitGroupDataRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/product/android/business/login/BindUser/getIsgetall()I
ifeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$getExtensionUserInfoTask/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Lcom/nd/android/u/cloud/activity/MainFrameActivty$1;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 2
.limit stack 5
.end method

.method private isSenior()V
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifne L0
L1:
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L2
new com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L2:
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/setSeniorParam(J)V
return
.limit locals 2
.limit stack 3
.end method

.method private loadData()V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "unit_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L0
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/UpdateBlackListRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/UpdateBlackListRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_blacklist_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "group_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L1
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
iconst_3
if_icmpeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L1
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L1:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "friend_list_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L2
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_3
if_icmpeq L2
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainFriendRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainFriendRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L2:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_followlist_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L3
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/business/backgroundRable/UpdateFollowingListRable
dup
invokespecial com/nd/android/u/cloud/business/backgroundRable/UpdateFollowingListRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "weibo_followlist_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
L3:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "app_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L4
new java/lang/Thread
dup
new com/nd/android/u/cloud/activity/MainFrameActivty$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$1/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L4:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "flower_msg_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L5
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/cloud/business/backgroundRable/UpdateFlowerMsgRable
dup
invokespecial com/nd/android/u/cloud/business/backgroundRable/UpdateFlowerMsgRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L5:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/UpdateBirthdayRemindRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 6
.end method

.method private resetLinear()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivCampusImg Landroid/widget/ImageView;
ldc_w 2130839135
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMessageImg Landroid/widget/ImageView;
ldc_w 2130839154
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMyImg Landroid/widget/ImageView;
ldc_w 2130839157
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivWeiboImg Landroid/widget/ImageView;
ldc_w 2130839170
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvCampusText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/normal_color I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMessageText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/normal_color I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMyText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/normal_color I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvWeiboText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/normal_color I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
tableswitch 0
L0
L1
L2
L3
L4
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivCampusImg Landroid/widget/ImageView;
ldc_w 2130839136
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvCampusText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/press_color I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivWeiboImg Landroid/widget/ImageView;
ldc_w 2130839171
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvWeiboText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/press_color I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMessageImg Landroid/widget/ImageView;
ldc_w 2130839155
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMessageText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/press_color I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMyImg Landroid/widget/ImageView;
ldc_w 2130839158
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMyText Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/activity/MainFrameActivty/press_color I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private setSeniorParam(J)V
new com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime
dup
aload 0
lload 1
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;J)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetEnrolTime/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method private showNewVersionTip()V
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/hasNewVersion()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/setNewImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/setNewImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
aload 1
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 1
invokevirtual android/view/KeyEvent/getAction()I
ifne L0
aload 1
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
iconst_1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/backCount I
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTime J
lconst_0
lcmp
ifeq L1
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTime J
lsub
ldc2_w 2000L
lcmp
ifge L1
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/backCount I
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/finish()V
iconst_0
ireturn
L1:
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTime J
aload 0
ldc "\u518d\u6309\u4e00\u6b21\u5c06\u9000\u51fa"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/MainFrameActivty/backCount I
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/KeyEvent/getKeyCode()I
bipush 84
if_icmpne L2
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
aload 1
invokevirtual android/view/View/dispatchKeyEvent(Landroid/view/KeyEvent;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getSchoolLifeMsgNum(J)V
lload 1
lconst_0
lcmp
ifle L0
lload 1
ldc2_w 99L
lcmp
ifle L1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countLifeText Landroid/widget/TextView;
ldc "99+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countLifeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countLifeText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countLifeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 4
.end method

.method public hideBottomLayout()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponent()V
aload 0
aload 0
ldc_w 2131625926
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625924
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/setNewImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625929
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/ivCampusImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625939
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMessageImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625942
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/ivMyImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625932
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/ivWeiboImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625934
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/ivLifeboImg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625930
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/tvCampusText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625935
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/tvLifeText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625938
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMessageText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625941
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/tvMyText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625933
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/tvWeiboText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625928
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutCampus Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625937
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutMessage Landroid/widget/RelativeLayout;
aload 0
aload 0
ldc_w 2131625940
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutMy Landroid/widget/RelativeLayout;
aload 0
aload 0
ldc_w 2131625931
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutWeibo Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625911
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625936
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainFrameActivty/countLifeText Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625927
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/resetLinear()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showMsgCount()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutCampus Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutMessage Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutMy Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/layoutWeibo Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/ivLifeboImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/footOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/schoollife/common/receiver/ChangeMainBottom
dup
new com/nd/android/u/cloud/activity/MainFrameActivty$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$3/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
invokespecial com/nd/schoollife/common/receiver/ChangeMainBottom/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;)V
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mChangeMainBottom Lcom/nd/schoollife/common/receiver/ChangeMainBottom;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.changemainbottom"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mChangeMainBottom Lcom/nd/schoollife/common/receiver/ChangeMainBottom;
aload 1
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public isFirstLogin()Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnonnull L0
iconst_0
istore 1
L1:
iload 1
ireturn
L0:
aload 0
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-Login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
istore 2
iload 2
istore 1
iload 2
ifeq L1
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getApplicationContext()Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-Login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
aload 3
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 1000
if_icmpne L0
iload 2
iconst_2
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/hidden()V
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getLocalManager()Landroid/app/LocalActivityManager;
invokevirtual android/app/LocalActivityManager/getCurrentActivity()Landroid/app/Activity;
astore 4
aload 4
instanceof com/nd/schoollife/ui/square/activity/SchoolLifeActivity
ifeq L1
aload 4
checkcast com/nd/schoollife/ui/square/activity/SchoolLifeActivity
iload 1
iload 2
aload 3
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 5
.limit stack 4
.end method

.method public onContactStateChange()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/clearContactNewMsg()V
aload 0
new com/nd/android/u/cloud/activity/MainFrameActivty$7
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$7/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/isSenior()V
aload 0
ldc_w 2130903475
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/setContentView(I)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aconst_null
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/setLoginResultCallback(Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Z
pop
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mMsgObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mMsgObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/initEvent()V
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/isFirstLogin()Z
ifeq L1
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
L2:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
aload 0
aload 0
ldc "window"
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/cloud/activity/MainFrameActivty/windowManager Landroid/view/WindowManager;
aload 0
new com/nd/android/u/cloud/manager/CheckinImgManager
dup
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/windowManager Landroid/view/WindowManager;
aload 0
invokespecial com/nd/android/u/cloud/manager/CheckinImgManager/<init>(Landroid/view/WindowManager;Landroid/app/Activity;)V
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/addFloatView()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/loadData()V
return
L1:
aload 1
ifnull L3
aload 1
ldc "id"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "id"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
goto L2
L3:
aload 0
aload 0
ldc "xyConfig"
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "xyConfig"
iconst_2
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
goto L2
L0:
aload 0
aload 1
ldc "id"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
goto L2
.limit locals 2
.limit stack 5
.end method

.method public onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/unregisterObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L0:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mMsgObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mMsgObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
aload 0
ldc "xyConfig"
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
aload 1
ldc "xyConfig"
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mIntentService Landroid/content/Intent;
ifnull L1
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mIntentService Landroid/content/Intent;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/stopService(Landroid/content/Intent;)Z
pop
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/remove()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mChangeMainBottom Lcom/nd/schoollife/common/receiver/ChangeMainBottom;
ifnull L2
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mChangeMainBottom Lcom/nd/schoollife/common/receiver/ChangeMainBottom;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onDestroy()V
return
.limit locals 2
.limit stack 6
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "notify_check_upgrade_result"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/showNewVersionTip()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aconst_null
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/setLoginResultCallback(Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Z
pop
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 2
ldc "id"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 2
ldc "id"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
L1:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
iconst_1
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onNewIntent(Landroid/content/Intent;)V
return
L0:
aload 0
iconst_2
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onPause()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onPause()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method public onReceiverNewContact(I)V
aload 0
new com/nd/android/u/cloud/activity/MainFrameActivty$6
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty$6/<init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;I)V
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onResume()V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "sign_in_one_day"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/business/manager/DataUpdateManager/isNotInOneDay(Ljava/lang/String;J)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/checkAndShow()V
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showMsgCount()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showLifeCount()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/showNewVersionTip()V
return
L0:
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
iconst_1
invokevirtual com/product/android/commonInterface/task/OapScore/setSignstatus(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mCheckinImgManager Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokevirtual com/nd/android/u/cloud/manager/CheckinImgManager/hidden()V
goto L1
.limit locals 1
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "id"
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/onStart()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/initData()V
return
.limit locals 1
.limit stack 1
.end method

.method public showBottomLayout()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/bottomLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
iconst_0
iconst_0
iconst_0
aload 0
ldc_w 50.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
L0:
return
.limit locals 1
.limit stack 6
.end method

.method public showLifeCount()V
aload 0
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/getMsgNum(Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;)V
return
.limit locals 1
.limit stack 1
.end method

.method public showMsgCount()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getAllUnreadMsgCount()I
istore 1
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 4
iload 1
istore 2
aload 4
instanceof com/nd/android/u/bean4xy/AppContactItem
ifeq L2
iload 1
istore 2
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iload 1
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
isub
istore 2
L2:
iload 2
istore 1
aload 4
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L0
iload 2
istore 1
aload 4
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L0
iload 2
aload 4
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
isub
istore 1
goto L0
L1:
iload 1
ifle L3
iload 1
istore 2
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L4
iload 1
istore 2
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L4
iload 1
istore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L4
iload 1
istore 2
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L4
iload 1
iconst_1
iadd
istore 2
L4:
iload 2
bipush 99
if_icmple L5
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
ldc "99+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L6:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L7:
return
L5:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L6
L3:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L7
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L7
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L7
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
ldc "1"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/countMsgText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 5
.limit stack 3
.end method

.method public switchActivity(IZ)V
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
astore 4
aload 4
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getCurrentFocus()Landroid/view/View;
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 4
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
istore 3
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
aconst_null
astore 5
aconst_null
astore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 6
aload 6
ifnull L1
aload 6
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/defaultGroupName Ljava/lang/String;
L2:
iload 1
tableswitch 0
L3
L4
L5
L6
L7
default : L8
L8:
aload 5
ifnull L9
aload 5
ldc_w 67108864
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getLocalManager()Landroid/app/LocalActivityManager;
aload 4
aload 5
invokevirtual android/app/LocalActivityManager/startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/container Landroid/widget/LinearLayout;
aload 4
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
iconst_m1
iconst_m1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;II)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/resetLinear()V
L9:
return
L1:
ldc ""
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/defaultGroupName Ljava/lang/String;
goto L2
L3:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/news/ui/activity/NewsListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
ldc "NewsListActivity"
astore 4
goto L8
L4:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/weibo/ui/activity/JMTweetListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mFriendCycleTabNeddRefresh Z
ifeq L10
aload 5
ldc "refresh"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
L10:
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mFriendCycleTabNeddRefresh Z
ldc "XYTweetListActivity"
astore 4
goto L8
L5:
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/SchoolLifeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
ldc "SchoolLifeActivity"
astore 4
goto L8
L6:
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L11
aload 0
invokespecial com/nd/android/u/cloud/activity/MainFrameActivty/AddNewFunctionGuide()V
L11:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/MessageFragmentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
iload 3
iconst_3
if_icmpne L12
iload 2
ifne L12
aload 5
ldc "click_flag"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L12:
ldc "RecentContactRecordActivity"
astore 4
goto L8
L7:
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "ERP \u573a\u666f8\uff1a\u767b\u5f55\u540e\uff0c\u8bbe\u7f6e\u9875\u9762\u52a0\u8f7d-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/MyTabActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty/mMyTabNeedRefresh Z
ifeq L13
aload 5
ldc "my_tab_need_refresh"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
L13:
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MainFrameActivty/mMyTabNeedRefresh Z
ldc "MyTabActivity"
astore 4
goto L8
.limit locals 7
.limit stack 4
.end method
