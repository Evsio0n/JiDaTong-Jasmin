.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/PopQuickReply
.super java/lang/Object
.inner class inner com/nd/android/u/ui/widge/chatfragment/PopQuickReply$1
.inner class public static abstract interface onItemSelectListener inner com/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener outer com/nd/android/u/ui/widge/chatfragment/PopQuickReply

.field private static final 'MAX_ITEM' I = 5


.field public static final 'REPLY_TYPE_ACKNOWLEDGE' I = 1


.field public static final 'REPLY_TYPE_CHAT' I = 0


.field public static final 'REPLY_TYPE_PRESENT' I = 2


.field private 'itemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'lvQuickReply' Landroid/widget/ListView;

.field private 'mContext' Landroid/content/Context;

.field private 'mFid' J

.field private 'mItemHeight' I

.field private 'mItemSelectListener' Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;

.field private 'mPostQuickReplies' [Ljava/lang/String;

.field private 'mQuickReplyAdapter' Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;

.field private 'mQuickReplyDao' Lcom/nd/android/u/business/db/dao/QuickReplyDao;

.field private 'mReplyList' Lcom/nd/android/u/controller/bean/QuickReplyList;

.field private 'mReplyType' I

.field private 'mWindow' Landroid/widget/PopupWindow;

.field private 'mbIsAllowEdit' Z

.field private 'mbIsToEdit' Z

.method public <init>(Landroid/content/Context;IJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsToEdit Z
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsAllowEdit Z
aload 0
new com/nd/android/u/ui/widge/chatfragment/PopQuickReply$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/PopQuickReply$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;)V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyType I
aload 0
lload 3
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mFid J
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;)Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsToEdit Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;)Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mItemSelectListener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private buildWindow(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/PopQuickReply/getReplyTexts()V
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 5
aload 5
iconst_2
iconst_2
iconst_2
iconst_2
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
new android/widget/ListView
dup
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/lvQuickReply Landroid/widget/ListView;
aload 0
new com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter
dup
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokespecial com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/bean/QuickReplyList;)V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mQuickReplyAdapter Lcom/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/lvQuickReply Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mItemHeight I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mItemHeight I
istore 4
aload 1
invokevirtual android/view/View/getHeight()I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsAllowEdit Z
ifeq L0
iload 3
iconst_5
invokestatic java/lang/Math/min(II)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mItemHeight I
imul
istore 2
L0:
iload 4
iload 3
imul
iload 2
invokestatic java/lang/Math/min(II)I
istore 2
aload 1
invokevirtual android/view/View/getWidth()I
bipush 19
imul
bipush 20
idiv
istore 3
aload 5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/lvQuickReply Landroid/widget/ListView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 5
ldc_w -7829368
invokevirtual android/widget/LinearLayout/setBackgroundColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/lvQuickReply Landroid/widget/ListView;
getstatic com/nd/android/u/chat/R$drawable/activity_bg I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
aload 0
new android/widget/PopupWindow
dup
aload 5
iload 3
iload 2
iconst_4
iadd
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
return
.limit locals 6
.limit stack 7
.end method

.method private getReplyTexts()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/quick_acknowledge I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 4
aload 0
new com/nd/android/u/controller/bean/QuickReplyList
dup
invokespecial com/nd/android/u/controller/bean/QuickReplyList/<init>()V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
istore 1
aload 4
arraylength
istore 2
L1:
iload 1
iload 2
if_icmpge L2
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 5
aload 4
iload 1
aaload
ldc "XXX"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
aload 5
aload 4
iload 1
aaload
ldc "XXX"
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mFid J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
L4:
aload 5
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 5
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L3:
aload 5
aload 4
iload 1
aaload
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
goto L4
L2:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getThanksFlowerMessage()Lcom/product/android/commonInterface/weibo/FlowerMessageInfo; 0
ifnull L5
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/quick_reply_acknowledge I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(ILjava/lang/Object;)V
L5:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mPostQuickReplies [Ljava/lang/String;
ifnull L6
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mPostQuickReplies [Ljava/lang/String;
arraylength
ifne L7
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/quick_present I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mPostQuickReplies [Ljava/lang/String;
L7:
aload 0
new com/nd/android/u/controller/bean/QuickReplyList
dup
invokespecial com/nd/android/u/controller/bean/QuickReplyList/<init>()V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mPostQuickReplies [Ljava/lang/String;
astore 4
aload 4
arraylength
istore 3
iconst_0
istore 1
L8:
iload 1
iload 3
if_icmpge L9
aload 4
iload 1
aaload
astore 5
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 6
aload 6
aload 5
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 6
iload 2
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
iload 2
iconst_1
iadd
istore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 6
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L8
L9:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getThanksFlowerMessage()Lcom/product/android/commonInterface/weibo/FlowerMessageInfo; 0
ifnull L5
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/quick_reply_acknowledge I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(ILjava/lang/Object;)V
return
L6:
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/getQuickReplyDao()Lcom/nd/android/u/business/db/dao/QuickReplyDao;
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/getReply()Lcom/nd/android/u/controller/bean/QuickReplyList;
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
ifnull L10
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
ifne L11
L10:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/quick_reply I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 4
aload 0
new com/nd/android/u/controller/bean/QuickReplyList
dup
invokespecial com/nd/android/u/controller/bean/QuickReplyList/<init>()V
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iconst_0
istore 1
aload 4
arraylength
istore 2
L12:
iload 1
iload 2
if_icmpge L11
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 5
aload 5
aload 4
iload 1
aaload
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 5
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 5
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 5
invokevirtual com/nd/android/u/business/db/dao/QuickReplyDao/insertReply(Lcom/nd/android/u/controller/bean/QuickReply;)J
pop2
iload 1
iconst_1
iadd
istore 1
goto L12
L11:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsAllowEdit Z
ifeq L5
new com/nd/android/u/controller/bean/QuickReply
dup
invokespecial com/nd/android/u/controller/bean/QuickReply/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/quick_reply_set I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/QuickReply/setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 7
.limit stack 6
.end method

.method public dismiss()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method public getmReplyType()I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsToEdit Z
ifeq L0
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsToEdit Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setAllowEdit(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mbIsAllowEdit Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemSelectListener(Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mItemSelectListener Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setQuickReply([Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mPostQuickReplies [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setmReplyType(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mReplyType I
return
.limit locals 2
.limit stack 2
.end method

.method public show(Landroid/view/View;II)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/PopQuickReply/buildWindow(Landroid/view/View;)V
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/PopQuickReply/mWindow Landroid/widget/PopupWindow;
aload 1
bipush 85
iload 2
iload 3
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 4
.limit stack 5
.end method
