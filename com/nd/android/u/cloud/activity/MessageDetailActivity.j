.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MessageDetailActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$1
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$2
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$3
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$4
.inner class private ReSendMessageTask inner com/nd/android/u/cloud/activity/MessageDetailActivity$ReSendMessageTask outer com/nd/android/u/cloud/activity/MessageDetailActivity
.inner class private SendMessageTask inner com/nd/android/u/cloud/activity/MessageDetailActivity$SendMessageTask outer com/nd/android/u/cloud/activity/MessageDetailActivity

.field private static final 'COMPLEMENTSTATUS' I = 2


.field private final 'TAG' Ljava/lang/String;

.field private 'flag' Z

.field private 'identity_bt_refresh' Landroid/widget/ImageView;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'longclicklistener' Landroid/view/View$OnLongClickListener;

.field private 'message_report_sucnum' Landroid/widget/TextView;

.field private 'message_report_totalnum' Landroid/widget/TextView;

.field private 'messageinfo' Lcom/nd/android/u/contact/dataStructure/MessageInfo;

.field private 'msg_content' Landroid/widget/TextView;

.field private 'msg_layout' Landroid/widget/LinearLayout;

.field public 'mySendMessageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mySendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'my_dialog' Landroid/app/ProgressDialog;

.field private 'reSendMessageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'reSendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'reply_list' Landroid/widget/Button;

.field private 'send_fail_num' Landroid/widget/TextView;

.field private 'send_list' Landroid/widget/Button;

.field private 'send_people' Landroid/widget/TextView;

.field private 'send_report_dealing' Landroid/widget/LinearLayout;

.field private 'send_report_ly' Landroid/widget/LinearLayout;

.field private 'send_result' Landroid/widget/TextView;

.field private 'send_status' Landroid/widget/TextView;

.field private 'send_time' Landroid/widget/TextView;

.field private 'sendtoname' Landroid/widget/TextView;

.field private 'sendtoname_title' Landroid/widget/TextView;

.field private 'username' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "MessageDetailActivity"
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/longclicklistener Landroid/view/View$OnLongClickListener;
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$2/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/imgOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$3/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$4/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_content Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;Lcom/nd/android/u/contact/dataStructure/MessageInfo;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/my_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity/setSendReport()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/flag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/my_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/my_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private setSendReport()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_dealing Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_ly Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_totalnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getTotalnum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_sucnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getSucnum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_fail_num Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getFailednum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
ldc com/nd/android/u/contact/dao/MessageInfoDAO
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MessageInfoDAO
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokeinterface com/nd/android/u/contact/dao/MessageInfoDAO/updateMessageInfo(Lcom/nd/android/u/contact/dataStructure/MessageInfo;)Z 1
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131625972
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/sendtoname Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625971
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/sendtoname_title Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625977
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_content Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625978
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_result Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625981
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_totalnum Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625983
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_fail_num Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625979
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_dealing Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625980
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_ly Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625982
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_sucnum Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624289
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_layout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625974
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_people Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625975
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_status Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625976
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_time Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/longclicklistener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/LinearLayout/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_content Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/longclicklistener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/TextView/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
aload 0
ldc_w 2131625984
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_list Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131625985
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/reply_list Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131625528
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131494245
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/rightBtn Landroid/widget/Button;
ldc_w 2131494875
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/rightBtn Landroid/widget/Button;
ldc_w 2130837930
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/sendtoname Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getSendtoname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getCurrentUserName()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/username Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_people Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/username Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_status Landroid/widget/TextView;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getIssuccess()I
bipush 100
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495271
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L2:
aload 2
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_time Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getTime()Ljava/util/Date;
invokestatic ims/utils/CommUtil/getCurrentDateTime(Ljava/util/Date;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/msg_content Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getMsg()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_totalnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getTotalnum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/message_report_sucnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getSucnum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_fail_num Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getFailednum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_list Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reply_list Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493577
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L2
.limit locals 3
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903491
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/getIntent()Landroid/content/Intent;
ldc "messageinfo"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/u/contact/dataStructure/MessageInfo
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getIsRead()I
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getReplynum()I
iconst_2
if_icmpeq L0
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getIssuccess()I
bipush 100
if_icmpne L0
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/sendMessage2C(Z)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getIssuccess()I
bipush 100
if_icmpeq L3
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_result Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_dealing Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_ly Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_list Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L3:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_dealing Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/send_report_ly Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/my_dialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/my_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L2:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public resendMessage2C()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$ReSendMessageTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$ReSendMessageTask/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;Lcom/nd/android/u/cloud/activity/MessageDetailActivity$1;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/reSendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected rightBtnHandle()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/resendMessage2C()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public sendMessage2C(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/flag Z
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MessageDetailActivity$SendMessageTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageDetailActivity$SendMessageTask/<init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;Lcom/nd/android/u/cloud/activity/MessageDetailActivity$1;)V
putfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
