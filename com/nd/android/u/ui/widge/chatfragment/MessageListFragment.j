.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.super android/support/v4/app/Fragment
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$1
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$10
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9
.inner class private EventManager inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager outer com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class public static abstract interface MessageListListener inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener outer com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class private RefreshListTask inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask outer com/nd/android/u/ui/widge/chatfragment/MessageListFragment

.field public static final 'OP_SEND' I = 1


.field public static final 'PAGESIZE' I = 10


.field protected volatile 'mChatAdapter' Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;

.field protected 'mChatListViewLayout' Landroid/widget/RelativeLayout;

.field private 'mDataSupplier' Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;

.field private 'mDontShowPopMessage' Z

.field private 'mLift' Lcom/nd/android/u/ui/widge/lift/Lift;

.field protected volatile 'mListView' Lcom/nd/android/u/ui/widge/ScrollListView;

.field protected volatile 'mMessageList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"

.field private 'mMessageListCallBack' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;

.field private 'mMessageType' I

.field private 'mObserver' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'mPopMessage' Lcom/nd/android/u/ui/widge/PopNewMessage;

.field private 'mQuenePlayManager' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.field protected 'mRefreshTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mTypingTipTimer' Lcom/nd/android/u/chatUiUtils/TimerEx;

.field private 'mbIsLiftAvailable' Z

.field protected 'meessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'notifyHandler' Landroid/os/Handler;

.field private 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'onTextClick' Landroid/view/View$OnClickListener;

.field private 'refreshHandler' Landroid/os/Handler;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mbIsLiftAvailable Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDontShowPopMessage Z
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$4/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/onTextClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/refreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/notifyHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/notifyHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;IZ)V
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/findMegerPos(IZ)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mPopMessage Lcom/nd/android/u/ui/widge/PopNewMessage;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageListCallBack Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/refreshHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/os/Message;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/proccessChatMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/os/Message;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/proccessOtherMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/hideTypingTip()V
return
.limit locals 1
.limit stack 1
.end method

.method private addMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/isGroup()Z 0
ifeq L1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L1
iload 2
bipush 80
if_icmpeq L2
iload 2
sipush 20481
if_icmpne L1
L2:
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "group share file exist:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getFileName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L3
aload 1
lconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTimeString(J)J 2
pop2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L3:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 2
L4:
iload 2
iflt L5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 3
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTimeString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
iload 2
iconst_1
isub
istore 2
goto L4
L6:
aload 1
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getCreateDate()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTimeString(J)J 2
pop2
L5:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method private displayTypingTip(Landroid/os/Message;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
instanceof com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
ifne L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
checkcast com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
astore 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast ims/bean/NDMessage
astore 1
aload 2
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getGeneralId()J
aload 1
getfield ims/bean/NDMessage/uidFrom J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
iconst_1
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getLastVisiblePosition()I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/getCount()I
iconst_1
isub
if_icmpne L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/getCount()I
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTypingTipTimer Lcom/nd/android/u/chatUiUtils/TimerEx;
ifnonnull L4
aload 0
new com/nd/android/u/chatUiUtils/TimerEx
dup
iconst_5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/refreshHandler Landroid/os/Handler;
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$10
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$10/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
invokespecial com/nd/android/u/chatUiUtils/TimerEx/<init>(ILandroid/os/Handler;Lcom/nd/android/u/chatUiUtils/TimerEx$OnTimer;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTypingTipTimer Lcom/nd/android/u/chatUiUtils/TimerEx;
return
L4:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTypingTipTimer Lcom/nd/android/u/chatUiUtils/TimerEx;
invokevirtual com/nd/android/u/chatUiUtils/TimerEx/reset()V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTypingTipTimer Lcom/nd/android/u/chatUiUtils/TimerEx;
invokevirtual com/nd/android/u/chatUiUtils/TimerEx/resetTimer()V
return
.limit locals 3
.limit stack 8
.end method

.method private findMegerPos(IZ)V
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11
dup
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;IZ)V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/execute(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 5
.end method

.method private getLastIndexForStrings(Ljava/lang/String;[Ljava/lang/String;)I
iconst_m1
istore 4
aload 2
arraylength
istore 5
iconst_0
istore 3
L0:
iload 3
iload 5
if_icmpge L1
aload 1
aload 2
iload 3
aaload
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
iload 4
invokestatic java/lang/Math/max(II)I
istore 4
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iload 4
ireturn
.limit locals 6
.limit stack 3
.end method

.method private hideTypingTip()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
getfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private initDataSupplier()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 1
ifnonnull L1
L0:
return
L1:
aload 1
instanceof com/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener
ifeq L2
aload 0
aload 1
checkcast com/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageListCallBack Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$MessageListListener;
L2:
aload 1
instanceof com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
ifeq L0
aload 0
aload 1
checkcast com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
invokeinterface com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter/getDataSupplier()Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier; 0
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
return
.limit locals 2
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setonRefreshListener(Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setPullDownListener(Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;)V
L0:
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager
dup
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$EventManager/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/view/View;)V
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
iconst_2
if_icmpeq L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
iconst_3
if_icmpne L2
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
L2:
return
.limit locals 1
.limit stack 4
.end method

.method private leaveGroup(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic ims/utils/CommUtil/parseLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getId()J 0
lcmp
ifeq L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual android/app/Activity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method private needFallFlower(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
L1:
iconst_0
ireturn
L0:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 100
if_icmpne L1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
astore 1
aload 1
ldc "\u6735\u7ea2\u73ab\u7470"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc "["
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc "]"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private proccessChatMessage(Landroid/os/Message;)V
iconst_1
istore 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 3
aload 1
getfield android/os/Message/what I
lookupswitch
-2 : L0
-1 : L0
10 : L1
11 : L2
20 : L3
21 : L4
22 : L5
default : L6
L6:
aload 1
getfield android/os/Message/what I
iconst_4
if_icmpeq L7
aload 1
getfield android/os/Message/what I
bipush 8
if_icmpne L8
L7:
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getErrorMsg()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L8:
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/refreshSpecifiedView(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
L9:
return
L0:
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/addMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L9
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifne L10
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/clearUnreadCount()V 0
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
iconst_0
putfield com/nd/android/u/ui/activity/message_chat/MessageAdapter/displayTypingTip Z
L10:
aload 1
getfield android/os/Message/what I
bipush -2
if_icmpne L11
L12:
aload 0
aload 3
iload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/showMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)V
return
L11:
iconst_0
istore 2
goto L12
L1:
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/removeMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
iconst_m1
iconst_0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/findMegerPos(IZ)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L13:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 4
aload 4
aload 3
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L13
aload 3
aload 4
invokestatic com/nd/android/u/chatUtil/ReflectUtil/copy(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 4
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/refreshSpecifiedView(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L3:
aload 3
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_1
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
return
L4:
aload 3
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_0
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
return
.limit locals 5
.limit stack 3
.end method

.method private proccessOtherMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
18 : L0
29 : L1
193 : L2
default : L3
L3:
return
L0:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/unsubPsp(Landroid/os/Message;)V
return
L1:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/leaveGroup(Landroid/os/Message;)V
return
L2:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/displayTypingTip(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method

.method private refreshSpecifiedView(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getChildCount()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
iload 2
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getChildAt(I)Landroid/view/View;
astore 4
aload 4
instanceof com/nd/android/u/controller/innerInterface/IChatListItem
ifeq L2
aload 4
checkcast com/nd/android/u/controller/innerInterface/IChatListItem
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
astore 5
aload 5
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 1
aload 5
invokestatic com/nd/android/u/chatUtil/ReflectUtil/copy(Ljava/lang/Object;Ljava/lang/Object;)V
aload 4
checkcast com/nd/android/u/controller/innerInterface/IChatListItem
aload 5
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
L1:
return
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 6
.limit stack 2
.end method

.method private removeMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
istore 2
iload 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTimeString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iload 2
iconst_1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
lconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTimeString(J)J 2
pop2
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 3
.limit stack 3
.end method

.method private showMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 3
aload 3
ifnull L1
aload 3
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getLastVisiblePosition()I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpge L2
iload 2
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
instanceof com/nd/android/u/ui/widge/ScrollListView
ifeq L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic com/common/android/utils/PackageUtils/isTopActivity(Landroid/content/Context;Ljava/lang/Class;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDontShowPopMessage Z
ifne L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mPopMessage Lcom/nd/android/u/ui/widge/PopNewMessage;
ifnonnull L4
aload 0
new com/nd/android/u/ui/widge/PopNewMessage
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/ui/widge/PopNewMessage/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mPopMessage Lcom/nd/android/u/ui/widge/PopNewMessage;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mPopMessage Lcom/nd/android/u/ui/widge/PopNewMessage;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/onTextClick Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/setOnTextClickListener(Landroid/view/View$OnClickListener;)V
L4:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mPopMessage Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/show()V
L3:
aload 0
iconst_m1
iconst_0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/findMegerPos(IZ)V
L5:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/selectLift(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L2:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/getCount()I
iconst_0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/findMegerPos(IZ)V
goto L5
.limit locals 4
.limit stack 4
.end method

.method private showMessages()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getNewMessageCount()I 0
istore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getUnreadMessageCount()I 0
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/clearUnreadCount()V 0
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ldc2_w -1L
bipush 10
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getData(JI)Ljava/util/List; 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/findNormalItem()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
isub
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setVisibility(I)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
lconst_1
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/callbackSetNotiType()V
return
.limit locals 2
.limit stack 5
.end method

.method private unregistObserver()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/getSubTypes(I)[I
astore 4
aload 4
ifnull L0
aload 4
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 4
iload 1
iaload
istore 3
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iload 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 5
.limit stack 3
.end method

.method private unsubPsp(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof java/lang/String
ifne L1
L0:
return
L1:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
astore 1
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/ui/activity/WebViewActivity/UNSUB_PSP Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/clear()V
goto L0
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/unregistObserver()V
return
.limit locals 2
.limit stack 1
.end method

.method public disableLift()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mbIsLiftAvailable Z
return
.limit locals 1
.limit stack 2
.end method

.method public getData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initView()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lv_chat I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/ScrollListView
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aconst_null
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
new com/nd/android/u/ui/activity/message_chat/MessageAdapter
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/ui/activity/message_chat/MessageAdapter/<init>(Landroid/app/Activity;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setAdapter(Landroid/widget/BaseAdapter;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_listview_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatListViewLayout Landroid/widget/RelativeLayout;
aload 0
new com/nd/android/u/ui/widge/lift/Lift
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatListViewLayout Landroid/widget/RelativeLayout;
invokespecial com/nd/android/u/ui/widge/lift/Lift/<init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mQuenePlayManager Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mQuenePlayManager Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/setDetailList(Ljava/util/List;)V
return
.limit locals 1
.limit stack 5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initView()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initDataSupplier()V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "MESSAGE_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
iconst_1
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/setNeedMerge(Z)V
L0:
aload 0
aload 1
ldc "SHOW_POP_MESSAGE"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDontShowPopMessage Z
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageType I
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/getSubTypes(I)[I
astore 5
aload 5
ifnull L1
aload 5
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 5
iload 2
iaload
istore 4
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iload 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
iload 2
iconst_1
iadd
istore 2
goto L2
L1:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initEvent()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/showMessages()V
aload 1
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/repost(Ljava/lang/String;Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
L3:
return
.limit locals 6
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_pub_messagelist_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/unregistObserver()V
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual com/nd/android/u/chatUiUtils/LocalImageManager/clear(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initDataSupplier()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mQuenePlayManager Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/setDetailList(Ljava/util/List;)V
return
.limit locals 1
.limit stack 2
.end method

.method public refreshAdatper()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshList()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
ifnonnull L0
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "null messagelist in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$RefreshListTask/<init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment$1;)V
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public resend(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/resend()V 0
aload 0
aload 1
iconst_1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/showMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public selectLift(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/isFinishing()Z
ifeq L1
L0:
return
L1:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
ldc " "
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 4
aload 0
aload 4
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/cake_keys I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getLastIndexForStrings(Ljava/lang/String;[Ljava/lang/String;)I
istore 2
aload 0
aload 4
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/flower_keys I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getLastIndexForStrings(Ljava/lang/String;[Ljava/lang/String;)I
istore 3
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/needFallFlower(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_1
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
L2:
iload 2
iload 3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mbIsLiftAvailable Z
ifeq L0
iload 2
iload 3
if_icmple L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_0
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mLift Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_1
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
return
.limit locals 5
.limit stack 4
.end method
