.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$1
.inner class inner com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$2
.inner class inner com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$3
.inner class private RecentContactListAdapter inner com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter outer com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment

.field public static final 'RECENT_CONTACT_CLOSE_ITEM_SLIDER_MENU' I = 6


.field public static final 'RECENT_CONTACT_REFRESH' I = 4


.field public static final 'RECENT_CONTACT_SCROLL_NEXT_UNREAD_RCORD' I = 5


.field public static final 'RECENT_CONTACT_UNREAD_MSG_COUNT_CHAGE' I = 1


.field public static final 'RECENT_CONTACT_UPDATE' I = 3


.field public static final 'RECENT_CONTACT_UPDATE_AFTER_DELAY' I = 2


.field private 'handler' Landroid/os/Handler;

.field private 'mAdapter' Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;

.field private 'mRectCactListView' Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;

.field private 'mSES' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mSF' Ljava/util/concurrent/ScheduledFuture; signature "Ljava/util/concurrent/ScheduledFuture<*>;"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$3/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/onLongClick(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/onClick(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/updateAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/onRefresh()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/closeListItemSliderMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method private closeListItemSliderMenu()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/closeCurrSliderMenuAni()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newInstance()Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
new com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment
dup
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private onClick(I)V
iload 1
ifge L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ifnull L1
aload 2
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/onClickItem(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 2
.end method

.method private onLongClick(I)V
iload 1
ifge L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 2
aload 2
ifnull L1
getstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
invokevirtual com/nd/android/u/controller/factory/ContactLongClickMenuFactory/showMessageMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
return
.limit locals 3
.limit stack 3
.end method

.method private onRefresh()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$2/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSF Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 1
.limit stack 6
.end method

.method private updateAdapter()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L0:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
aload 5
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L0
aload 5
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 5
aload 5
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getGeneralId()J
lstore 1
lload 1
lconst_0
lcmp
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 6
aload 6
ifnull L0
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
iconst_2
if_icmpne L0
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
aload 3
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/setParam(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/closeCurrSliderMenu()V
return
.limit locals 7
.limit stack 4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/activity/recent_contact/RectCactListView
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
getstatic com/nd/android/u/chat/R$drawable/activity_bg I
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setBackgroundResource(I)V
aload 0
new com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;Landroid/content/Context;)V
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mAdapter Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mRectCactListView Lcom/nd/android/u/ui/activity/recent_contact/RectCactListView;
new com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;)V
invokevirtual com/nd/android/u/ui/activity/recent_contact/RectCactListView/setOnItemListener(Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;)V
return
.limit locals 2
.limit stack 7
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
invokestatic java/util/concurrent/Executors/newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
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
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/mSES Ljava/util/concurrent/ScheduledExecutorService;
invokeinterface java/util/concurrent/ScheduledExecutorService/shutdownNow()Ljava/util/List; 0
pop
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 1
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
invokespecial com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/updateAdapter()V
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
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method
