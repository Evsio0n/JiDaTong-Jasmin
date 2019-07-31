.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment
.super android/support/v4/app/Fragment
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$3
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$4
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$5
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$6
.inner class private RefreshPspInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class private SynPspInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspListFragment

.field private static final 'GETFORMDB' I = 0


.field private static final 'GETFORMDBANDNETWORK' I = 2


.field private static final 'GETFORMNETWORK' I = 1


.field public static final 'NUMCOLUMNS' I = 3


.field private 'adapter' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;

.field private 'delListener' Landroid/view/View$OnClickListener;

.field private 'mDelInfo' Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;

.field private 'mDissDialog' Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;

.field private 'mGetInfoType' I

.field private 'mListView' Landroid/widget/ListView;

.field private 'mOrgnizedData' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;>;"

.field private 'mPopDel' Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;

.field private 'mPspId' Ljava/lang/String;

.field private 'mRefreshHandler' Landroid/os/Handler;

.field private 'mdialog' Landroid/app/ProgressDialog;

.field private 'mpspPromptlv' Landroid/widget/LinearLayout;

.field private 'mpspPrompttv' Landroid/widget/TextView;

.field private 'mshowDialog' Z

.field private 'observer' Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;

.field private 'observerNew' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'oldPspList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.field private 'refreshPspInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'refreshPspInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'synAppInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'synPspInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/oldPspList Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mshowDialog Z
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mGetInfoType I
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mRefreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$4
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$4/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$5
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$6
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$6/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/delListener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfo(ZI)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mshowDialog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/util/ArrayList;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/orgnizeData(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshAdapter(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfo(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1800(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mRefreshHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDelInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/showPopDel(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mGetInfoType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/oldPspList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/oldPspList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPspId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private buildGroup(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>()V
astore 3
aload 3
aload 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/groupName Ljava/lang/String;
aload 3
iconst_1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/isGroupTitle Z
aload 3
ldc "-1"
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 2
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method private buildItem(Lcom/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup;)V
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/pspInfoLists Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
istore 4
iload 4
ifne L0
L1:
return
L0:
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/groupname Ljava/lang/String;
ifnull L2
aload 0
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/groupname Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/buildGroup(Ljava/lang/String;)V
L2:
iconst_0
istore 2
L3:
iload 2
iload 4
if_icmpge L1
iload 2
iconst_3
irem
ifne L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
iconst_0
istore 3
L5:
iload 3
iconst_3
if_icmpge L6
iload 2
iload 3
iadd
istore 5
iload 5
iload 4
if_icmpne L7
L6:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L7:
aload 1
aload 6
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L5
.limit locals 7
.limit stack 3
.end method

.method private getPosition(Lcom/nd/android/u/publicNumber/ui/widget/PspItemViews;)I
iconst_0
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/ArrayList
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/getData()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/equals(Ljava/lang/Object;)Z
ifeq L2
iload 2
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_m1
ireturn
.limit locals 4
.limit stack 2
.end method

.method private init()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPromptlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
getfield com/product/android/business/bean/SysParam/obtainPspGroup I
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPrompttv Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/waiting_for_refresh I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
iconst_0
iconst_2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfo(ZI)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPrompttv Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/no_data_now I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 1
.limit stack 3
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/view Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/psp_prompt_lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPromptlv Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/view Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/psp_prompt_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPrompttv Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/view Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pspplug_grid I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method public static newInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
new com/nd/android/u/publicNumber/ui/activity/PspListFragment
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method private orgnizeData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)V"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
L1:
return
L0:
invokestatic com/nd/android/u/publicNumber/PublicNumberMain/getGroupInerface()Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;
astore 4
aload 4
ifnonnull L2
new com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/<init>()V
astore 4
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/pspInfoLists Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
aload 4
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/buildItem(Lcom/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup;)V
return
L2:
aload 4
invokeinterface com/nd/android/u/publicNumber/controller/outInterface/IPublicGroup/getGroupNames()[Ljava/lang/String; 0
astore 7
aload 7
ifnonnull L3
new com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/<init>()V
astore 4
aload 4
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/pspInfoLists Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
aload 4
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/buildItem(Lcom/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup;)V
return
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 6
iconst_0
istore 2
aload 7
arraylength
istore 3
L4:
iload 2
iload 3
if_icmpge L5
new com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/<init>()V
astore 8
aload 8
aload 7
iload 2
aaload
putfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/groupname Ljava/lang/String;
aload 6
aload 7
iload 2
aaload
aload 8
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 5
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 7
aload 4
aload 7
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/regtype I
invokeinterface com/nd/android/u/publicNumber/controller/outInterface/IPublicGroup/getGroupName(I)Ljava/lang/String; 1
astore 8
aload 8
ifnull L6
aload 6
aload 8
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
getfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/pspInfoLists Ljava/util/ArrayList;
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L6
L7:
aload 5
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L8:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/buildItem(Lcom/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup;)V
goto L8
.limit locals 9
.limit stack 3
.end method

.method private refreshAdapter(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter
dup
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mOrgnizedData Ljava/util/ArrayList;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/setData(Ljava/util/ArrayList;)V
iload 1
ifeq L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/notifyDataSetChanged()V
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPromptlv Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPromptlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mGetInfoType I
iconst_2
if_icmpeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mpspPrompttv Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/no_data_now I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method

.method private refreshPspInfo(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPspId Ljava/lang/String;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment$1;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private registerEvent()V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method private showPopDel(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
aload 0
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/getData()Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDelInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDelInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/getParent()Landroid/view/ViewParent;
checkcast android/view/View
astore 3
L2:
aload 3
instanceof com/nd/android/u/publicNumber/ui/widget/PspItemViews
ifne L3
aload 3
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/View
astore 3
goto L2
L3:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual android/view/View/getTop()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
ifnonnull L4
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspPopDel
dup
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/publicNumber/ui/widget/PspPopDel/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/delListener Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspPopDel/setDelClickListener(Landroid/view/View$OnClickListener;)V
L4:
aload 3
invokevirtual android/view/View/getTop()I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspPopDel/getHeight()I
iadd
ifge L5
aload 0
aload 3
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemViews
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/getPosition(Lcom/nd/android/u/publicNumber/ui/widget/PspItemViews;)I
istore 2
iload 2
iflt L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mListView Landroid/widget/ListView;
iload 2
iconst_0
invokevirtual android/widget/ListView/setSelectionFromTop(II)V
L5:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mPopDel Lcom/nd/android/u/publicNumber/ui/widget/PspPopDel;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspPopDel/show(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
return
.limit locals 4
.limit stack 4
.end method

.method private synPspInfo(ZI)V
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mshowDialog Z
aload 0
iload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mGetInfoType I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
L0:
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment$1;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synAppInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
getstatic com/nd/android/u/chat/R$drawable/refresh I
invokeinterface android/view/MenuItem/setIcon(I)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/Fragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_psp_gridlist_new I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/view Landroid/view/View;
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/initView()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/registerEvent()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/init()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/refreshPspInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
ifnull L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/dismissDialog()V
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
ifnull L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/mdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L3:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
iconst_1
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment/synPspInfo(ZI)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public updatePspList()V
return
.limit locals 1
.limit stack 0
.end method
