.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MainAppActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/MainAppActivity$1
.inner class inner com/nd/android/u/cloud/activity/MainAppActivity$2
.inner class private SynAppInfoTask inner com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask outer com/nd/android/u/cloud/activity/MainAppActivity

.field private static final 'TAG' Ljava/lang/String; = "MainAppActivity"

.field private 'adapter' Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;

.field private 'ctx' Landroid/content/Context;

.field private 'gridView' Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;

.field protected 'mDropDownPopWindow' Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;

.field protected 'mHeaderLayout' Landroid/widget/RelativeLayout;

.field private 'mRefreshImage' Landroid/widget/ImageView;

.field private 'mTextView' Landroid/widget/TextView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'mySendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'promptLayout' Landroid/widget/LinearLayout;

.field protected 'showBegin' Z

.field protected 'synAppInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synAppInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
new com/nd/android/u/cloud/activity/MainAppActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainAppActivity$2/<init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
putfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/ctx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private synAppInfo(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MainAppActivity/showBegin Z
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask/<init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;Lcom/nd/android/u/cloud/activity/MainAppActivity$1;)V
putfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected goTo(Ljava/lang/Class;)V
aload 0
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public handler_CMD_GETAPPINFO()V
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/activity/MainAppActivity/synAppInfo(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
aload 0
ldc_w 2131625951
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MainAppActivity/mRefreshImage Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625950
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MainAppActivity/mTextView Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624559
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/ui/draggrid/DragGridView
putfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
new com/nd/android/u/cloud/ui/adapter/AppAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
aload 0
ldc_w 2131624574
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MainAppActivity/promptLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new com/nd/android/u/cloud/view/widge/DropDownPopWindow
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mRefreshImage Landroid/widget/ImageView;
invokespecial com/nd/android/u/cloud/view/widge/DropDownPopWindow/<init>(Landroid/content/Context;Landroid/view/View;)V
putfield com/nd/android/u/cloud/activity/MainAppActivity/mDropDownPopWindow Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;
aload 0
aload 0
ldc_w 2131625948
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/MainAppActivity/mHeaderLayout Landroid/widget/RelativeLayout;
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponentValue()V
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 1
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mHeaderLayout Landroid/widget/RelativeLayout;
iload 1
iload 2
invokevirtual android/widget/RelativeLayout/measure(II)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mHeaderLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getMeasuredHeight()I
istore 1
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
iload 1
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setDeviationTop(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/refreshAdapter()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/synOapDetail()V
return
.limit locals 3
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mRefreshImage Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131625949
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
new com/nd/android/u/cloud/activity/MainAppActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MainAppActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/MainAppActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131625949
L0
L1
L2
default : L1
L1:
return
L2:
aload 0
iconst_1
invokespecial com/nd/android/u/cloud/activity/MainAppActivity/synAppInfo(Z)V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903481
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/setContentView(I)V
aload 0
aload 0
putfield com/nd/android/u/cloud/activity/MainAppActivity/ctx Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onStart()V
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L0
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/activity/MainAppActivity/synAppInfo(Z)V
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/initComponentValue()V
return
.limit locals 1
.limit stack 3
.end method

.method public refreshAdapter()V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/ui/adapter/AppAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/AppAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getAppList()Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/getAppList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
L1:
iconst_1
invokestatic com/nd/android/u/contact/business/SynOapApp/getAppInfoByDB(I)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/setAppList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/AppAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/showPrompt()V
return
.limit locals 1
.limit stack 4
.end method

.method protected showPrompt()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
ifnull L0
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
ifne L1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/promptLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
bipush 8
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity/gridView Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;
iconst_0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public synOapDetail()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 1
.limit stack 6
.end method
