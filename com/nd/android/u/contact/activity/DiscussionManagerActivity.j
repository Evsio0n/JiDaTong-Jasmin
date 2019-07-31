.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.implements android/view/View$OnTouchListener
.implements com/product/android/commonInterface/chat/IGroupReceiveSettingListener
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$1
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$2
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$3
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$4
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$5
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$6
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$7
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$8
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$9
.inner class private QuitDiscussionTask inner com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask outer com/nd/android/u/contact/activity/DiscussionManagerActivity
.inner class private RemoveDiscussionMemberTask inner com/nd/android/u/contact/activity/DiscussionManagerActivity$RemoveDiscussionMemberTask outer com/nd/android/u/contact/activity/DiscussionManagerActivity
.inner class private SynDiscussionInfoTask inner com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask outer com/nd/android/u/contact/activity/DiscussionManagerActivity

.field public static final 'MSG_REFRESH_ADAPTER' I = 1001


.field private 'adapter' Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;

.field protected 'chatHistoryLayout' Landroid/widget/RelativeLayout;

.field protected 'conversationLayout' Landroid/widget/RelativeLayout;

.field protected 'exitGroupBtn' Landroid/widget/Button;

.field protected 'exitGroupLayout' Landroid/widget/LinearLayout;

.field private 'gid' J

.field protected 'gridOnClickListener' Landroid/view/View$OnClickListener;

.field protected 'groupIdText' Landroid/widget/TextView;

.field private 'groupNameLabel' Landroid/widget/TextView;

.field private 'groupNameText' Landroid/widget/TextView;

.field protected 'groupNoticesLayout' Landroid/widget/RelativeLayout;

.field protected 'groupNoticesText' Landroid/widget/TextView;

.field protected 'groupidLayout' Landroid/widget/RelativeLayout;

.field private 'groupsettype' Landroid/widget/TextView;

.field private 'mGroup' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mNotifyType' I

.field private 'mShowBegin' Z

.field private 'mToggleButton' Landroid/widget/ImageView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'memberGridView' Lcom/product/android/ui/widget/NestInListGridView;

.field protected 'quitDiscussionListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'quitDiscussionTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'receiveMsgLayout' Landroid/widget/RelativeLayout;

.field protected 'removeDiscussionMemberListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'removeDiscussionMemberTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synDiscussInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'synDiscussionInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupsettype Landroid/widget/TextView;
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$1/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$2/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gridOnClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$3/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$8
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$8/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$9
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$9/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;J)J
aload 0
lload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/uid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMember()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mShowBegin Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussion()V
return
.limit locals 1
.limit stack 1
.end method

.method private filterNotExistMember(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getNickname()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getNickname()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L3:
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L0:
aload 3
areturn
.limit locals 5
.limit stack 2
.end method

.method private getGroupInfo()V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/finish()V
return
.limit locals 1
.limit stack 4
.end method

.method private quitDiscussion()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/activity/DiscussionManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private removeDiscussionMember()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$RemoveDiscussionMemberTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$RemoveDiscussionMemberTask/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/activity/DiscussionManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/removeDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private setPermission()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
new com/nd/android/u/contact/dialog/DlgGroupRevSet
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
getstatic com/nd/android/u/contact/R$style/Style_Self_Info_Dlg I
iconst_2
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet/<init>(Landroid/content/Context;III)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/setOnAfterDismissListener(Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
aload 1
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/show()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
iconst_2
if_icmpne L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
L3:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ldc ""
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/setMsgNotifyType(Ljava/lang/String;I)Z
pop
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
goto L3
.limit locals 2
.limit stack 6
.end method

.method private synDiscussionInfo(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mShowBegin Z
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setDeleteModule(Z)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
return
L1:
aload 0
new com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/activity/DiscussionManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected final _onCreate(Landroid/os/Bundle;)Z
iconst_0
istore 2
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_discussion_manager I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/setContentView(I)V
L2:
aload 1
ifnonnull L3
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
L4:
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/getGroupInfo()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ifnull L5
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/initEvent()V
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfo(Z)V
L5:
iconst_1
istore 2
L0:
iload 2
ireturn
L1:
aload 0
getstatic com/nd/android/u/contact/R$layout/discussion_manager I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/setContentView(I)V
goto L2
L3:
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
goto L4
.limit locals 3
.limit stack 3
.end method

.method public exitDisCussionGroup()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
new com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/DiscussionManagerActivity$4
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$4/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/DiscussionManagerActivity$5
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$5/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/sure_exit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGID()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\"."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setValue(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/R$string/quit_discussion I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setTitle(I)V
return
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/sure_exit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGID()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\"."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/DiscussionManagerActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$6/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/DiscussionManagerActivity$7
dup
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$7/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 6
.end method

.method public final getPermission(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
return
L1:
return
L2:
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
aconst_null
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
L1:
return
L0:
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
lcmp
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/isFinishing()Z
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_layout_gid I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupidLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_layout_open_conversation I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/conversationLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_layout_notices I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNoticesLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_layout_exit I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_btn_exit_group I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/exitGroupBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_layout_chat_history I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_text_gid I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupIdText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/discussion_text_notices I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNoticesText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_grid I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/NestInListGridView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/memberGridView Lcom/product/android/ui/widget/NestInListGridView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_header_text_name I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_header_text_name_label I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNameLabel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_setting_type_txt I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupsettype Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getstatic com/nd/android/u/contact/R$string/discussion_setting I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNameLabel Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNameLabel Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/personal_discussion I
invokevirtual android/widget/TextView/setText(I)V
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_msg_img I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
return
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_receivemsg I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_setting_type_txt I
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupsettype Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected final initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupIdText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGID()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNoticesText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getNotice()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getMsgNotifyType()I
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
iconst_1
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mNotifyType I
iconst_2
if_icmpne L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
ifnonnull L4
aload 0
new com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gridOnClickListener Landroid/view/View$OnClickListener;
invokespecial com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/<init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/memberGridView Lcom/product/android/ui/widget/NestInListGridView;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/product/android/ui/widget/NestInListGridView/setAdapter(Landroid/widget/ListAdapter;)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
L0:
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
.limit locals 1
.limit stack 5
.end method

.method protected final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/exitGroupBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/conversationLayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/groupNoticesLayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/memberGridView Lcom/product/android/ui/widget/NestInListGridView;
aload 0
invokevirtual com/product/android/ui/widget/NestInListGridView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method public final onClick(Landroid/view/View;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "grouptype"
iconst_3
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/discussion_layout_exit I
if_icmpeq L0
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/discussion_btn_exit_group I
if_icmpne L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/exitDisCussionGroup()V
L2:
return
L1:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/discussion_layout_receivemsg I
if_icmpeq L3
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_msg_img I
if_icmpne L4
L3:
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/setPermission()V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/discussion_layout_open_conversation I
if_icmpne L5
aload 0
iconst_3
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L5:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/discussion_layout_notices I
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ifnull L2
aload 0
ldc com/nd/android/u/contact/activity/DiscussionNoticeActivity
aload 2
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 4
.end method

.method public onDataChanged(IJ)V
iload 1
sipush 2004
if_icmpeq L0
iload 1
sipush 2005
if_icmpne L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/finish()V
L1:
return
.limit locals 4
.limit stack 2
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/quitDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L3:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public final onResume()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
aload 0
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/getGroupInfo()V
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/mHandler Landroid/os/Handler;
sipush 1001
ldc2_w 100L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method

.method public onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/gid J
lload 2
lcmp
ifeq L0
L1:
return
L0:
iload 1
sipush 2001
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/finish()V
return
.limit locals 5
.limit stack 4
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/group_member_grid I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/isDeleteModule()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setDeleteModule(Z)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity/adapter Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected final rightBtnHandle()V
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity/synDiscussionInfo(Z)V
return
.limit locals 1
.limit stack 2
.end method
