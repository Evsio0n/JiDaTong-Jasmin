.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty$1

.field private static final 'FOOTER_VIEW_ID' I = 99


.field private static final 'SHOW_ADD' I = 0


.field private static final 'SHOW_DEL' I = 1


.field private 'btAdd' Landroid/widget/Button;

.field private 'btDel' Landroid/widget/Button;

.field private 'btModify' Landroid/widget/Button;

.field private 'etText' Landroid/widget/EditText;

.field private 'listener' Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;

.field private 'lvQuickReply' Landroid/widget/ListView;

.field private 'mDragListViewController' Lcom/nd/android/u/ui/widge/DragListViewController;

.field private 'mFooterView' Landroid/view/View;

.field private 'mPosition' I

.field private 'mQuickReplyAdapter' Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;

.field private 'mQuickReplyDao' Lcom/nd/android/u/business/db/dao/QuickReplyDao;

.field private 'mQuickReplyList' Lcom/nd/android/u/controller/bean/QuickReplyList;

.field private 'mbIsResorted' Z

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mbIsResorted Z
aload 0
new com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;)V
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/listener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$002(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mbIsResorted Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;)Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;)Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/changeLayout(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private changeLayout(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btAdd Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btModify Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btDel Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
invokevirtual android/widget/ListView/getFooterViewsCount()I
ifne L1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btAdd Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btModify Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btDel Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/removeFooterView()V
return
.limit locals 2
.limit stack 2
.end method

.method private getFooterView()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/getFooterView()Landroid/view/View;
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
bipush 99
invokevirtual android/view/View/setId(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private getReplyTexts()V
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/getQuickReplyDao()Lcom/nd/android/u/business/db/dao/QuickReplyDao;
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/getReply()Lcom/nd/android/u/controller/bean/QuickReplyList;
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
ifne L1
L0:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/quick_reply I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 3
aload 0
new com/nd/android/u/controller/bean/QuickReplyList
dup
invokespecial com/nd/android/u/controller/bean/QuickReplyList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
istore 1
aload 3
arraylength
istore 2
L2:
iload 1
iload 2
if_icmpge L1
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 4
aload 4
aload 3
iload 1
aaload
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 4
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 4
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/insertReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
pop2
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
return
.limit locals 5
.limit stack 3
.end method

.method private initView()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/btAdd I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btAdd Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/btDel I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btDel Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/btModify I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btModify Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/etText I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 1
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 1
getstatic com/nd/android/u/chat/R$string/quick_reply I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/chat/R$id/header_layout_right I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btAdd Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btDel Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/btModify Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/getReplyTexts()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/lvQuickReply I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
new com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/bean/QuickReplyList;)V
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/getFooterView()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
pop
aload 0
new com/nd/android/u/ui/widge/DragListViewController
dup
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
invokespecial com/nd/android/u/ui/widge/DragListViewController/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mDragListViewController Lcom/nd/android/u/ui/widge/DragListViewController;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mDragListViewController Lcom/nd/android/u/ui/widge/DragListViewController;
invokevirtual com/nd/android/u/ui/widge/DragListViewController/manageList()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mDragListViewController Lcom/nd/android/u/ui/widge/DragListViewController;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/listener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
invokevirtual com/nd/android/u/ui/widge/DragListViewController/setOnEventListener(Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;)V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mbIsResorted Z
aload 0
iconst_0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/changeLayout(I)V
return
.limit locals 2
.limit stack 5
.end method

.method private isIllegalText(Ljava/lang/String;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_empty I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/isExist(Ljava/lang/String;)Z
ifeq L1
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_add_repeat I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private onAdd()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/isIllegalText(Ljava/lang/String;)Z
ifeq L0
return
L0:
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 2
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/insertReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
lconst_0
lcmp
ifge L1
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_add_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 2
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/hideSoftInput()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 4
.end method

.method private onDel()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
iconst_m1
if_icmple L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/QuickReply
astore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 1
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/deleteReply(Lcom/nd/android/u/controller/bean/QuickReply;)Z
ifeq L1
aload 0
iconst_m1
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/notifyDataSetChanged()V
aload 0
iconst_0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/changeLayout(I)V
L0:
return
L1:
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_del_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method

.method private onModity()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/etText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/isIllegalText(Ljava/lang/String;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
ifge L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mPosition I
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/QuickReply
astore 2
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mbIsResorted Z
ifne L2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 2
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/updateReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
lconst_0
lcmp
ifge L3
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/hideSoftInput()V
return
L3:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/notifyDataSetChanged()V
goto L2
.limit locals 3
.limit stack 4
.end method

.method private removeFooterView()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mFooterView Landroid/view/View;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/btDel I
if_icmpne L2
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/onDel()V
return
L2:
iload 2
getstatic com/nd/android/u/chat/R$id/btAdd I
if_icmpne L3
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/onAdd()V
return
L3:
iload 2
getstatic com/nd/android/u/chat/R$id/btModify I
if_icmpne L4
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/onModity()V
return
L4:
iload 2
bipush 99
if_icmpne L1
aload 0
iconst_0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/changeLayout(I)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/chat/R$layout/quick_reply I
invokevirtual com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/setContentView(I)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onPause()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mbIsResorted Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/resort()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/QuickReply
astore 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAcitivty/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 2
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/updateReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
lconst_0
lcmp
ifge L1
aload 0
getstatic com/nd/android/u/chat/R$string/quick_reply_modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L0:
return
.limit locals 3
.limit stack 4
.end method
