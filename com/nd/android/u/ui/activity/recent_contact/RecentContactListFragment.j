.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$1
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$4
.inner class private RecentContactListAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment

.field private static final 'FORWARDING_PARAM' Ljava/lang/String; = "forwarding_param"

.field public static final 'RECENT_CONTACT_CLOSE_ITEM_SLIDER_MENU' I = 6


.field public static final 'RECENT_CONTACT_REFRESH' I = 4


.field public static final 'RECENT_CONTACT_SCROLL_NEXT_UNREAD_RCORD' I = 5


.field public static final 'RECENT_CONTACT_UNREAD_MSG_COUNT_CHAGE' I = 1


.field public static final 'RECENT_CONTACT_UPDATE' I = 3


.field public static final 'RECENT_CONTACT_UPDATE_AFTER_DELAY' I = 2


.field private 'handler' Landroid/os/Handler;

.field private 'mAdapter' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;

.field private 'mForwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field private 'mRectCactListView' Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;

.field private 'mSES' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mSF' Ljava/util/concurrent/ScheduledFuture; signature "Ljava/util/concurrent/ScheduledFuture<*>;"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$4
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$4/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/onLongClick(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/onClick(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/updateAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/onRefresh()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/closeListItemSliderMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method private closeListItemSliderMenu()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/closeCurrSliderMenuAni()V
return
.limit locals 1
.limit stack 1
.end method

.method private isNormalUse()Z
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static newInstance(Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment
dup
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "forwarding_param"
aload 0
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
aload 2
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private onClick(I)V
iload 1
ifge L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ifnull L1
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 3
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/isNormalUse()Z
ifeq L2
aload 2
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/onClickItem(Landroid/content/Context;)V
return
L2:
aload 2
aload 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 4
.limit stack 3
.end method

.method private onLongClick(I)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/isNormalUse()Z
ifne L0
L1:
return
L0:
iload 1
iflt L1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ifnull L1
getstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
invokevirtual com/nd/android/u/controller/factory/ContactLongClickMenuFactory/showMessageMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 3
.end method

.method private onRefresh()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 1
.limit stack 6
.end method

.method private updateAdapter()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/setParam(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/closeCurrSliderMenu()V
return
.limit locals 2
.limit stack 2
.end method

.method protected doScroll()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/getFirstVisiblePosition()I
istore 1
iload 1
ifge L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/getLastVisiblePosition()I
istore 2
iload 2
iflt L1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getLastUnreadItem()I
istore 3
iload 3
iflt L1
iload 2
iload 3
if_icmplt L2
iconst_0
istore 1
L3:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/closeCurrSliderMenu()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setSelection(I)V
return
L2:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getNextUnreadItem(I)I
istore 2
iload 2
iflt L1
iload 2
istore 1
iload 2
ldc_w 2147483647
if_icmpne L3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
iconst_0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getNextUnreadItem(I)I
istore 2
iload 2
istore 1
iload 2
ldc_w 2147483647
if_icmpne L3
iconst_0
istore 1
goto L3
.limit locals 4
.limit stack 2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/activity/recent_contact/RectCactListView
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
getstatic com/nd/android/u/chat/R$drawable/activity_bg I
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setBackgroundResource(I)V
aload 0
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setOnItemListener(Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;)V
return
.limit locals 2
.limit stack 7
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getArguments()Landroid/os/Bundle;
ldc "forwarding_param"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/controller/bean/contact/ForwardingParam
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 0
invokestatic java/util/concurrent/Executors/newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/all_readed I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/Fragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/recent_contact_list I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
invokeinterface java/util/concurrent/ScheduledExecutorService/shutdownNow()Ljava/util/List; 0
pop
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
astore 2
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getAllUnreadMsgCount()I
ifeq L0
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/clearAllUnreadFlag()V
new java/lang/Thread
dup
new com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2
dup
aload 0
aload 2
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;Lcom/nd/android/u/business/db/dao/RecentContactRecords;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
L0:
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/callbackSetNotiType()V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public onPause()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
aload 0
invokespecial android/support/v4/app/Fragment/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/updateAdapter()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public pushMessage(ILjava/lang/Object;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
iload 1
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method
