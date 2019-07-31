.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$1
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$1$1
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2$1
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$3

.field 'c' Ljava/util/Calendar;

.field private 'mReminddesctx' Landroid/widget/TextView;

.field protected 'onclicklistener' Landroid/view/View$OnClickListener;

.field private 'rec_msg_backgroup_cb' Landroid/widget/CheckBox;

.field private 'rec_msg_backgroup_ly' Landroid/widget/RelativeLayout;

.field private 'receive_begin_ly' Landroid/widget/RelativeLayout;

.field private 'receive_begin_txt' Landroid/widget/TextView;

.field private 'receive_end_ly' Landroid/widget/RelativeLayout;

.field private 'receive_end_txt' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_txt Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_txt Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_ly Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_ly Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_ly Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_cb Landroid/widget/CheckBox;
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/mReminddesctx Landroid/widget/TextView;
aload 0
new com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$3/<init>(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)V
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/onclicklistener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_txt Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_txt Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_cb Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/setEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private setEnabled(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_ly Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$drawable/preference_first_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/mReminddesctx Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_ly Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_ly Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_ly Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$drawable/preference_one_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/mReminddesctx Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_ly Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_ly Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/receive_msg_period I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/setContentView(I)V
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/c Ljava/util/Calendar;
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/initEvent()V
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
getstatic com/nd/android/u/chat/R$id/receive_begin_txt I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_txt Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/receive_end_txt I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_txt Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/receive_begin_ly I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_ly Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/receive_end_ly I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_ly Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/rec_msg_backgroup_ly I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_ly Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/rec_msg_backgroup_cb I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_cb Landroid/widget/CheckBox;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/remind_desc_tx I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/mReminddesctx Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/receive_msg_time I
invokevirtual com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
astore 1
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_txt Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_hour()I
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_minute()I
invokestatic com/product/android/utils/TimeUtils/getHourMinute(II)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_txt Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_hour()I
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_minute()I
invokestatic com/product/android/utils/TimeUtils/getHourMinute(II)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getRecmsg_background()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_cb Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
iconst_0
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/setEnabled(Z)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_cb Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
iconst_1
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/setEnabled(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/rec_msg_backgroup_ly Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/onclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_begin_ly Landroid/widget/RelativeLayout;
new com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$1/<init>(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/receive_end_ly Landroid/widget/RelativeLayout;
new com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2/<init>(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method
