.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/background_setting/CommonSettingActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$1
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1

.field private 'cbLightReminder' Landroid/widget/ToggleButton;

.field private 'enable_tx_sound' Landroid/widget/TextView;

.field private 'enable_tx_vibrate' Landroid/widget/TextView;

.field private 'group_msg_layout' Landroid/widget/RelativeLayout;

.field private 'handler' Landroid/os/Handler;

.field private 'listener' Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;

.field private 'mIsOnlysetGroupPara' I

.field private 'mTvClearChatRecord' Landroid/widget/TextView;

.field private 'm_iPermission' I

.field private 'mgroupsettypetv' Landroid/widget/TextView;

.field private 'new_msg_notification_cb' Landroid/widget/ToggleButton;

.field private 'new_msg_notification_layout' Landroid/widget/RelativeLayout;

.field protected 'onclicklistener' Landroid/view/View$OnClickListener;

.field private 'popup_reminder_cb' Landroid/widget/ToggleButton;

.field private 'popup_reminder_layout' Landroid/widget/RelativeLayout;

.field 'r' Ljava/lang/Runnable;

.field private 'receive_msg_time_layout' Landroid/widget/RelativeLayout;

.field private 'rlLightReminder' Landroid/widget/RelativeLayout;

.field private 'sound_cb' Landroid/widget/ToggleButton;

.field private 'sound_layout' Landroid/widget/RelativeLayout;

.field private 'touchVibrate_cb' Landroid/widget/ToggleButton;

.field private 'touchVibrate_layout' Landroid/widget/RelativeLayout;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_sound Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_vibrate Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_cb Landroid/widget/ToggleButton;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/rlLightReminder Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/cbLightReminder Landroid/widget/ToggleButton;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/group_msg_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mgroupsettypetv Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/receive_msg_time_layout Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mTvClearChatRecord Landroid/widget/TextView;
aload 0
iconst_2
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/m_iPermission I
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mIsOnlysetGroupPara I
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$1/<init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)V
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/<init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)V
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/listener Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
aload 0
new com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3/<init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)V
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/r Ljava/lang/Runnable;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/setEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/m_iPermission I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/m_iPermission I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/listener Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_cb Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/cbLightReminder Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mIsOnlysetGroupPara I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mIsOnlysetGroupPara I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mgroupsettypetv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private setEnabled(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_sound Landroid/widget/TextView;
ldc_w -12959933
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_vibrate Landroid/widget/TextView;
ldc_w -12959933
invokevirtual android/widget/TextView/setTextColor(I)V
L1:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
iload 1
invokevirtual android/widget/ToggleButton/setEnabled(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_layout Landroid/widget/RelativeLayout;
iload 1
invokevirtual android/widget/RelativeLayout/setEnabled(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
iload 1
invokevirtual android/widget/ToggleButton/setEnabled(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_layout Landroid/widget/RelativeLayout;
iload 1
invokevirtual android/widget/RelativeLayout/setEnabled(Z)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_sound Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_vibrate Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/common_setting I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/receive_msg_time_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/receive_msg_time_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/sound_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/sound_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/group_msg_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/group_msg_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/new_msg_notification_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/new_msg_notification_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/touchVibrate_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/touchVibrate_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/popup_reminder_layout I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_layout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/popup_reminder_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_cb Landroid/widget/ToggleButton;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_layout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/enable_tx_sound I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_sound Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/enable_tx_vibrate I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/enable_tx_vibrate Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/light_reminder_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/cbLightReminder Landroid/widget/ToggleButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/lightReminder I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/rlLightReminder Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/group_setting_type_txt I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mgroupsettypetv Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/clearChatRecord I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mTvClearChatRecord Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
iconst_1
istore 3
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/common_settings I
invokevirtual com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
astore 4
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getNewmsg_notification()I
iconst_1
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
iconst_0
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/setEnabled(Z)V
L1:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
astore 5
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getSilent()I
iconst_1
if_icmpne L2
iconst_1
istore 2
L3:
aload 5
iload 2
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
astore 5
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getTouchVibrate()I
iconst_1
if_icmpne L4
iconst_1
istore 2
L5:
aload 5
iload 2
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_cb Landroid/widget/ToggleButton;
astore 5
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getPopup_reminder()I
iconst_1
if_icmpne L6
iconst_1
istore 2
L7:
aload 5
iload 2
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/cbLightReminder Landroid/widget/ToggleButton;
astore 5
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getLightReminder()I
ifne L8
iload 3
istore 2
L9:
aload 5
iload 2
invokevirtual android/widget/ToggleButton/setChecked(Z)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getReceivegroupmsg()I 0
istore 1
aload 0
iload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/m_iPermission I
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mgroupsettypetv Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupSetNameByType(I)Ljava/lang/String; 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
iconst_1
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/setEnabled(Z)V
goto L1
L2:
iconst_0
istore 2
goto L3
L4:
iconst_0
istore 2
goto L5
L6:
iconst_0
istore 2
goto L7
L8:
iconst_0
istore 2
goto L9
.limit locals 6
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/receive_msg_time_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/sound_cb Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ToggleButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/group_msg_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/new_msg_notification_cb Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ToggleButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/touchVibrate_cb Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ToggleButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_layout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/popup_reminder_cb Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ToggleButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/rlLightReminder Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/cbLightReminder Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ToggleButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/mTvClearChatRecord Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method
