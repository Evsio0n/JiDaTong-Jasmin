.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MessageReplyDetailActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/MessageReplyDetailActivity$1
.inner class private SendMessageTask inner com/nd/android/u/cloud/activity/MessageReplyDetailActivity$SendMessageTask outer com/nd/android/u/cloud/activity/MessageReplyDetailActivity

.field private final 'TAG' Ljava/lang/String;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'msg_content' Landroid/widget/TextView;

.field private 'msg_layout' Landroid/widget/LinearLayout;

.field private 'mySendMessageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mySendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'reply_number' Landroid/widget/TextView;

.field private 'reply_person' Landroid/widget/TextView;

.field private 'reply_time' Landroid/widget/TextView;

.field private 'service_number' Landroid/widget/TextView;

.field private 'smsreplybean' Lcom/nd/android/u/cloud/bean/SmsReplyBean;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "MessageReplyDetailActivity"
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/cloud/activity/MessageReplyDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageReplyDetailActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;)V
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;)Lcom/nd/android/u/cloud/bean/SmsReplyBean;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;Lcom/nd/android/u/cloud/bean/SmsReplyBean;)Lcom/nd/android/u/cloud/bean/SmsReplyBean;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/msg_content Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903655
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/getIntent()Landroid/content/Intent;
ldc "smsreplybean"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/u/cloud/bean/SmsReplyBean
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/sendMessage2C()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131626508
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_person Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626509
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_number Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625977
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/msg_content Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626511
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/service_number Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626512
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_time Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624289
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/msg_layout Landroid/widget/LinearLayout;
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
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131494870
invokevirtual com/nd/android/u/cloud/activity/MessageReplyDetailActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_person Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getPhone1()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_number Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getPhone1()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/service_number Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getPhone2()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/reply_time Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getTime1()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/msg_content Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/smsreplybean Lcom/nd/android/u/cloud/bean/SmsReplyBean;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getSmsbody()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L1:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public sendMessage2C()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MessageReplyDetailActivity$SendMessageTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageReplyDetailActivity$SendMessageTask/<init>(Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity;Lcom/nd/android/u/cloud/activity/MessageReplyDetailActivity$1;)V
putfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyDetailActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
