.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Erp
.super android/widget/RelativeLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Erp$1

.field private 'listener' Landroid/view/View$OnClickListener;

.field private 'mConfirmText' [[Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/bean4xy/DisplayMessage_Person;

.field private 'tvConfirm' Landroid/widget/TextView;

.field private 'tvContent' Landroid/widget/TextView;

.field private 'tvDetail' Landroid/widget/TextView;

.field private 'tvProject' Landroid/widget/TextView;

.field private 'tvTime' Landroid/widget/TextView;

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_2
anewarray [Ljava/lang/String;
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mConfirmText [[Ljava/lang/String;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Erp$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Erp$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Erp;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/listener Landroid/view/View$OnClickListener;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Erp/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_2
anewarray [Ljava/lang/String;
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mConfirmText [[Ljava/lang/String;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Erp$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Erp$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Erp;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/listener Landroid/view/View$OnClickListener;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Erp/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Erp;)Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Erp;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/ChatListItemView_Erp;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_erplayout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvContent I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvContent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvConfirm I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/listener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvTitle I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvProject I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvProject Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvTime I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvDetail I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvDetail Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvDetail Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/listener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/chat/R$id/tvDetail I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/listener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/task_status_from I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/task_status_to I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mConfirmText [[Ljava/lang/String;
iconst_0
aload 2
aastore
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mConfirmText [[Ljava/lang/String;
iconst_1
aload 3
aastore
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 101
if_icmpeq L0
aload 0
bipush 8
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/setVisibility(I)V
L1:
return
L0:
aload 0
aload 1
checkcast com/nd/android/u/bean4xy/DisplayMessage_Person
putfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Erp/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/projectname Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvProject Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/content Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_time I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTime Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/tasktime Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTime Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvContent Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvTitle Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvProject Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvDetail Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/type I
iconst_2
if_icmpne L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvProject Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_subject I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvProject Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/projectname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mConfirmText [[Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/type I
aaload
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/status I
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/status I
tableswitch 0
L5
L6
L6
L7
L8
L8
L8
default : L6
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setEnabled(Z)V
return
L7:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/clickable Z
ifeq L9
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setEnabled(Z)V
return
L9:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setEnabled(Z)V
return
L8:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/type I
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/mMessage Lcom/nd/android/u/bean4xy/DisplayMessage_Person;
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/status I
iconst_4
if_icmpne L10
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setEnabled(Z)V
return
L10:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Erp/tvConfirm Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setEnabled(Z)V
return
.limit locals 2
.limit stack 3
.end method
