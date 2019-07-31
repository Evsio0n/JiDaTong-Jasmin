.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MessageReplyListActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/MessageReplyListActivity$1
.inner class private SendMessageTask inner com/nd/android/u/cloud/activity/MessageReplyListActivity$SendMessageTask outer com/nd/android/u/cloud/activity/MessageReplyListActivity

.field private static final 'TAG' Ljava/lang/String; = "MessageSendListActivity"

.field private 'adapter' Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;

.field private 'fail' I

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'groupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"

.field private 'listView' Landroid/widget/ListView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'message_report_sucnum' Landroid/widget/TextView;

.field private 'message_report_totalnum' Landroid/widget/TextView;

.field private 'mySendMessageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mySendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'send_fail_num' Landroid/widget/TextView;

.field private 'smsid' Ljava/lang/String;

.field private 'success' I

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
aload 0
new com/nd/android/u/cloud/activity/MessageReplyListActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageReplyListActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)V
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;)Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageReplyListActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/smsid Ljava/lang/String;
areturn
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
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903495
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "smsid"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/smsid Ljava/lang/String;
aload 0
aload 1
ldc "total"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/total I
aload 0
aload 1
ldc "success"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/success I
aload 0
aload 1
ldc "fail"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/fail I
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected getMessageRecords()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903492
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625984
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/getMessageRecords()Ljava/util/List;
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/sendMessage2C()V
L0:
aload 0
new com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/groupList Ljava/util/List;
invokespecial com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
ldc_w 2131625981
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/message_report_totalnum Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625983
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/send_fail_num Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625982
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/message_report_sucnum Landroid/widget/TextView;
return
.limit locals 1
.limit stack 5
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131494871
invokevirtual com/nd/android/u/cloud/activity/MessageReplyListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/message_report_totalnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/total I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/message_report_sucnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/success I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/send_fail_num Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/fail I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/m_dialog Landroid/app/ProgressDialog;
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
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MessageReplyListActivity$SendMessageTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageReplyListActivity$SendMessageTask/<init>(Lcom/nd/android/u/cloud/activity/MessageReplyListActivity;Lcom/nd/android/u/cloud/activity/MessageReplyListActivity$1;)V
putfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MessageReplyListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
