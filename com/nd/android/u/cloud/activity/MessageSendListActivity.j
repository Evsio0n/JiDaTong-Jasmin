.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MessageSendListActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/MessageSendListActivity$1
.inner class inner com/nd/android/u/cloud/activity/MessageSendListActivity$2
.inner class private SendMessageTask inner com/nd/android/u/cloud/activity/MessageSendListActivity$SendMessageTask outer com/nd/android/u/cloud/activity/MessageSendListActivity

.field private static final 'TAG' Ljava/lang/String; = "MessageSendListActivity"

.field private 'adapter' Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;

.field private 'fail' I

.field private 'flag' Z

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'groupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"

.field private 'headListView' Landroid/widget/LinearLayout;

.field private 'listView' Landroid/widget/ListView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'message_report_sucnum' Landroid/widget/TextView;

.field private 'message_report_totalnum' Landroid/widget/TextView;

.field 'moreOnClick' Landroid/view/View$OnClickListener;

.field private 'mySendMessageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mySendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'pageNo' I

.field private final 'pos' I

.field private 'selectId' I

.field private 'send_fail_num' Landroid/widget/TextView;

.field private 'smsid' Ljava/lang/String;

.field private 'start' I

.field private 'success' I

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/start I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/selectId I
aload 0
bipush 20
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/pos I
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
new com/nd/android/u/cloud/activity/MessageSendListActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageSendListActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)V
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/moreOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/MessageSendListActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageSendListActivity$2/<init>(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)V
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/smsid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/selectId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$610(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
istore 1
aload 0
iload 1
iconst_1
isub
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageSendListActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/start I
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
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/m_dialog Landroid/app/ProgressDialog;
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
ldc_w 2130903497
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "smsid"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/smsid Ljava/lang/String;
aload 0
aload 1
ldc "total"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
aload 0
aload 1
ldc "success"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/success I
aload 0
aload 1
ldc "fail"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/fail I
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected getMessageRecords()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/smsid Ljava/lang/String;
ifnull L0
aload 0
ldc com/nd/android/u/contact/dao/SmsQueryDetailDAO
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/SmsQueryDetailDAO
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/smsid Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/SmsQueryDetailDAO/findSmsQueryDetail(JLjava/lang/String;)Ljava/util/List; 3
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 1
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/start I
iload 1
ifle L0
aload 0
iconst_m1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
astore 1
aload 0
aload 1
ldc_w 2130903492
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/headListView Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625984
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/headListView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/getMessageRecords()Ljava/util/List;
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
ifeq L1
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/sendMessage2C(Z)V
L1:
aload 0
new com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/groupList Ljava/util/List;
invokespecial com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
ldc_w 2130903684
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/moreOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
bipush 20
if_icmple L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/start I
if_icmpeq L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
aload 0
aload 0
ldc_w 2131625981
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/message_report_totalnum Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625983
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/send_fail_num Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625982
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/message_report_sucnum Landroid/widget/TextView;
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L3
.limit locals 2
.limit stack 5
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131495042
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/message_report_totalnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/message_report_sucnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/success I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/send_fail_num Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/fail I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method public moresearchFriend()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/start I
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
bipush 20
imul
iadd
bipush 20
iadd
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/total I
if_icmplt L0
aload 0
ldc_w 2131493712
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/adapter Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/notifyDataSetChanged()V
return
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
iconst_1
iadd
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/pageNo I
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/listView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getSelectedItemId()J
l2i
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/selectId I
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/sendMessage2C(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L1:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public sendMessage2C(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/flag Z
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/MessageSendListActivity$SendMessageTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageSendListActivity$SendMessageTask/<init>(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Lcom/nd/android/u/cloud/activity/MessageSendListActivity$1;)V
putfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendMessageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity/mySendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
