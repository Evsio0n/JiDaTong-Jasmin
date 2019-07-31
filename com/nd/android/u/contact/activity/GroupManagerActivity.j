.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/GroupManagerActivity
.super com/nd/android/u/contact/activity/base/GroupHeaderActivity
.implements com/product/android/commonInterface/chat/IGroupReceiveSettingListener
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$1
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$10
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$2
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$3
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$4
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$5
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$6
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$7
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$8
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$9
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupManagerActivity

.field private 'CLOUD_MESSAGE_URL' Ljava/lang/String;

.field private 'arrays' [Ljava/lang/String;

.field protected 'chatHistoryLayout' Landroid/widget/RelativeLayout;

.field protected 'conversationLayout' Landroid/widget/RelativeLayout;

.field private 'dialog' Landroid/app/AlertDialog;

.field protected 'exitGroupBtn' Landroid/widget/Button;

.field protected 'exitGroupLayout' Landroid/widget/LinearLayout;

.field protected 'groupAlbumLayout' Landroid/widget/RelativeLayout;

.field protected 'groupClearMessageLayout' Landroid/widget/RelativeLayout;

.field protected 'groupIdText' Landroid/widget/TextView;

.field protected 'groupIntroducationText' Landroid/widget/TextView;

.field private 'groupIntroductionImg' Landroid/widget/ImageView;

.field protected 'groupIntroductionLayout' Landroid/widget/RelativeLayout;

.field protected 'groupManagerLayout' Landroid/widget/RelativeLayout;

.field protected 'groupManagerText' Landroid/widget/TextView;

.field private 'groupNoticesImg' Landroid/widget/ImageView;

.field protected 'groupNoticesLayout' Landroid/widget/RelativeLayout;

.field protected 'groupNoticesText' Landroid/widget/TextView;

.field protected 'groupidLayout' Landroid/widget/RelativeLayout;

.field private 'groupsettype' Landroid/widget/TextView;

.field protected 'groupshareLayout' Landroid/widget/RelativeLayout;

.field protected 'handler' Landroid/os/Handler;

.field protected 'joinpermLayout' Landroid/widget/RelativeLayout;

.field protected 'lookMemberLayout' Landroid/widget/RelativeLayout;

.field private 'mMsgType' I

.field private 'mToggleButton' Landroid/widget/ImageView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'myOnClick' Landroid/view/View$OnClickListener;

.field private 'obs' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;

.field 'optType' I

.field protected 'receiveMsgLayout' Landroid/widget/RelativeLayout;

.field protected 'showBegin' Z

.field protected 'synGroupMemberInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'tempPerm' I

.field protected 'transferGroupLayout' Landroid/widget/RelativeLayout;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "im/groupchat?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/GroupManagerActivity/CLOUD_MESSAGE_URL Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupsettype Landroid/widget/TextView;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$1/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$2/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$3/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity/optType I
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity$10
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$10/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/classGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/classGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/synGroupInfo(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/CLOUD_MESSAGE_URL Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/toActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/setMsgNotifyType()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/modifyJoinGroupPerm(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$4100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/classGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$4200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$4302(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$4400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method private modifyJoinGroupPerm(I)V
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
return
L0:
iload 1
tableswitch 0
L1
L2
L3
default : L4
L4:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iconst_1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iconst_0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iconst_2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method private setMsgNotifyType()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
new com/nd/android/u/contact/dialog/DlgGroupRevSet
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
getstatic com/nd/android/u/contact/R$style/Style_Self_Info_Dlg I
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet/<init>(Landroid/content/Context;II)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/setOnAfterDismissListener(Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
aload 1
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/show()V
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
aload 0
getstatic com/nd/android/u/contact/R$string/modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
iconst_1
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
iconst_2
if_icmpne L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setMsgNotifyType(Ljava/lang/String;I)Z
pop
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
goto L4
.limit locals 2
.limit stack 5
.end method

.method private showCustomDialog()V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermission()I
putfield com/nd/android/u/contact/activity/GroupManagerActivity/tempPerm I
new com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermission()I
invokespecial com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/<init>(Landroid/content/Context;I)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/the_authentication I
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setTitle(I)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/GroupManagerActivity$4
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$4/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/GroupManagerActivity$5
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$5/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
new com/nd/android/u/contact/activity/GroupManagerActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$6/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setRadioGroupLisener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
return
.limit locals 2
.limit stack 6
.end method

.method private showSystemDiaog()V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/the_authentication I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/activity/GroupManagerActivity$7
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$7/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/arrays [Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermission()I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getJoinpermPostion(I)I
new com/nd/android/u/contact/activity/GroupManagerActivity$8
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$8/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
invokevirtual android/app/AlertDialog$Builder/setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/nd/android/u/contact/activity/GroupManagerActivity/dialog Landroid/app/AlertDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/dialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 6
.end method

.method private synGroupInfo(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity/showBegin Z
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/activity/GroupManagerActivity$1;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected _onCreate(Landroid/os/Bundle;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imroam/groupchat?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/GroupManagerActivity/CLOUD_MESSAGE_URL Ljava/lang/String;
L0:
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_group_manager I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/setContentView(I)V
L3:
aload 0
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/allowed_to_join_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/need_validation_to_join_the_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/do_not_allow_anyone_to_join_the_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/GroupManagerActivity/arrays [Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initEvent()V
iconst_1
ireturn
L2:
aload 0
getstatic com/nd/android/u/contact/R$layout/group_manager I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/setContentView(I)V
goto L3
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 6
.end method

.method public changeGroupJoinperm()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L0
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/showSystemDiaog()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public enableComponent()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/lookMemberLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/conversationLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupAlbumLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L2
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L5
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroductionImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/dissolution_group I
invokevirtual android/widget/Button/setText(I)V
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/exit_group I
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public exitGroup()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity/optType I
L1:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
new com/nd/android/u/contact/dialog/XYDismissGroupDailog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/optType I
invokespecial com/nd/android/u/contact/dialog/XYDismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
iconst_1
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog/setIsClose(Z)V
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/GroupManagerActivity/optType I
goto L1
L2:
new com/nd/android/u/contact/dialog/DismissGroupDailog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/optType I
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 1
.limit stack 5
.end method

.method public getJoinpermPostion(I)I
iload 1
ifne L0
iconst_1
ireturn
L0:
iload 1
iconst_1
if_icmpne L1
iconst_0
ireturn
L1:
iconst_2
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getPermission(I)V
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

.method public handler_CMD_31()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initComponentValue()V
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifne L0
L1:
return
L0:
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lcmp
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/isFinishing()Z
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method public handler_CMD_x20004()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_member I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/lookMemberLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_gid I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupidLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_open_conversation I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/conversationLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_creator I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroductionLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_clear_message I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupClearMessageLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_transfer I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_exit I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_btn_exit_group I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_chat_history I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_gid I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIdText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_creator I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroducationText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroductionImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/joinpermLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_album I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupAlbumLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_share I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupshareLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupshareLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_2
if_icmpeq L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupidLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroductionLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/joinpermLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_msg_img I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
L5:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_receivemsg I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L3
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/isExists(JZ)Z 3
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupClearMessageLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupshareLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L3
L4:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_setting_type_txt I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity/groupsettype Landroid/widget/TextView;
goto L5
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIdText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroducationText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getIntroduction()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getNotice()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
putfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupsettype Landroid/widget/TextView;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupsettype Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getGroupSetFormType(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
ifne L4
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermissionDescription()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
iconst_1
if_icmpeq L5
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mMsgType I
iconst_2
if_icmpne L6
L5:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/enableComponent()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lconst_0
lcmp
ifeq L2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L7
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L7:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
new com/nd/android/u/contact/activity/GroupManagerActivity$9
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$9/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L6:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L0
.limit locals 2
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/receiveMsgLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/conversationLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/lookMemberLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupNoticesLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupIntroductionLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupClearMessageLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/transferGroupLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/exitGroupBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupAlbumLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/joinpermLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/GroupManagerActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L2:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/showType I
ifne L0
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/synGroupInfo(Z)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
lconst_0
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L1
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/finish()V
L1:
return
.limit locals 1
.limit stack 4
.end method

.method protected rightBtnHandle()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity/synGroupInfo(Z)V
return
.limit locals 1
.limit stack 3
.end method
