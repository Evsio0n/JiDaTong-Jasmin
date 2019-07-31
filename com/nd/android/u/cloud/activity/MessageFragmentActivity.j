.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements ims/outInterface/IStateObserver
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnStateListener
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$1
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$2
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$3
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$4
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$5
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$1
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$7
.inner class static synthetic inner com/nd/android/u/cloud/activity/MessageFragmentActivity$8
.inner class private static final enum FragmentType inner com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType outer com/nd/android/u/cloud/activity/MessageFragmentActivity
.inner class private static final enum ProcessState inner com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState outer com/nd/android/u/cloud/activity/MessageFragmentActivity

.field public static final 'CLICK_AGAIN_VALUE' I = 1


.field private static final 'CLICK_DEFAULT_VALUE' I = 0


.field public static final 'CLICK_FLAG' Ljava/lang/String; = "click_flag"

.field private static final 'RECIEVE_NEW_MSG' I = 3


.field private static final 'SHOW_RECENT_CONTACT_FRAGMENT' I = 4


.field private static final 'UNREAD_COUNT_CHAGE' I = 2


.field private static final 'UPDATE_TITLE' I = 1


.field private 'contactObserver' Lcom/nd/android/u/contact/listener/ContactObserver;

.field private 'curTabType' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field private 'gotoContactBroadcastReceiver' Landroid/content/BroadcastReceiver;

.field private 'handler' Landroid/os/Handler;

.field private 'ivContactTabMsgCount' Landroid/widget/ImageView;

.field private 'mAddRL' Landroid/widget/ImageView;

.field private 'mContactFragment' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.field private 'mContactRL' Landroid/widget/RelativeLayout;

.field private 'mContactUnderLine' Landroid/widget/ImageView;

.field private 'mCurFragment' Landroid/support/v4/app/Fragment;

.field private 'mCurNetworkState' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;

.field private 'mFragmentSearch' Lcom/nd/android/u/cloud/fragment/SearchFragment;

.field private 'mHeaderView' Landroid/view/View;

.field private 'mLastTabType' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field private 'mMaskLayer' Lcom/common/android/ui/widget/MaskLayer;

.field private 'mMessageUnderLine' Landroid/widget/ImageView;

.field private 'mMsgRL' Landroid/widget/RelativeLayout;

.field private 'mNoCactRcdr' Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;

.field private 'mPhotoRL' Landroid/widget/ImageView;

.field private 'mRecentContacts' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mTvContactTab' Landroid/widget/TextView;

.field private 'mTvContactTabMsgCount' Landroid/widget/TextView;

.field private 'mTvMessageTab' Landroid/widget/TextView;

.field private 'messageObserver' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'requstResultObserver' Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
new com/nd/android/u/cloud/activity/MessageFragmentActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$1/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/gotoContactBroadcastReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/nd/android/u/cloud/activity/MessageFragmentActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$4/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/cloud/activity/MessageFragmentActivity$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$5/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
aload 0
new com/nd/android/u/cloud/activity/MessageFragmentActivity$6
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$6/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/contactObserver Lcom/nd/android/u/contact/listener/ContactObserver;
aload 0
new com/nd/android/u/cloud/activity/MessageFragmentActivity$7
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$7/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/pushMessage(ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/setTitleText()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method private closeSearch()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/clearEditText()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/hideInputStatus()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
iconst_1
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setSearchBarState(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private initHeaderView(Landroid/view/View;)V
aload 0
aload 1
ldc_w 2131625533
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMsgRL Landroid/widget/RelativeLayout;
aload 0
aload 1
ldc_w 2131625536
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactRL Landroid/widget/RelativeLayout;
aload 0
aload 1
ldc_w 2131625543
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mAddRL Landroid/widget/ImageView;
aload 0
aload 1
ldc_w 2131625542
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mPhotoRL Landroid/widget/ImageView;
aload 0
aload 1
ldc_w 2131625535
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMessageUnderLine Landroid/widget/ImageView;
aload 0
aload 1
ldc_w 2131625538
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactUnderLine Landroid/widget/ImageView;
aload 0
aload 1
ldc_w 2131625534
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvMessageTab Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131625537
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTab Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131625540
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131625539
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/ivContactTabMsgCount Landroid/widget/ImageView;
return
.limit locals 2
.limit stack 3
.end method

.method private processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 4
aload 4
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 3
aload 4
ldc_w 2131624267
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
astore 4
aload 1
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
if_acmpne L0
aload 4
ifnonnull L1
aload 3
ldc_w 2131624267
invokestatic com/nd/android/u/ui/activity/recent_contact/OfflineFragment/newInstance()Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurNetworkState Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
L1:
return
L0:
aload 1
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
if_acmpne L1
aload 4
ifnull L2
aload 3
aload 4
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurNetworkState Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
return
L2:
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurNetworkState Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
if_acmpne L1
iload 2
bipush 20
if_icmpgt L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvMessageTab Landroid/widget/TextView;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$3
dup
aload 0
iload 2
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$3/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;I)V
ldc2_w 100L
invokevirtual android/widget/TextView/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 5
.limit stack 5
.end method

.method private pushMessage(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/handler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
iload 1
putfield android/os/Message/what I
aload 3
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method private setTitleText()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
aload 0
ldc_w 2131495324
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/getConnectState()I
istore 1
iload 1
iconst_1
if_icmpne L0
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getAllUnreadMsgCount()I
istore 1
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
iload 1
istore 2
aload 5
instanceof com/nd/android/u/bean4xy/AppContactItem
ifeq L3
iload 1
istore 2
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iload 1
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
isub
istore 2
L3:
iload 2
istore 1
aload 5
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L1
iload 2
istore 1
aload 5
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L1
iload 2
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
isub
istore 1
goto L1
L2:
iload 1
ifle L4
aload 3
bipush 40
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 1
bipush 99
if_icmple L5
aload 3
ldc "99+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L6:
aload 3
bipush 41
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L4:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvMessageTab Landroid/widget/TextView;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L5:
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
goto L6
L0:
iload 1
ifne L7
aload 3
aload 0
ldc_w 2131494592
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
L7:
iload 1
bipush 6
if_icmpne L4
aload 3
aload 0
ldc_w 2131493350
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
.limit locals 6
.limit stack 3
.end method

.method private showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
astore 1
L0:
aload 1
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 1
if_acmpeq L1
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mLastTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$8/$SwitchMap$com$nd$android$u$cloud$activity$MessageFragmentActivity$FragmentType [I
aload 1
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/ordinal()I
iaload
tableswitch 1
L2
L2
L3
default : L4
L4:
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 3
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 3
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurFragment Landroid/support/v4/app/Fragment;
ifnull L5
aload 4
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurFragment Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L5:
aconst_null
astore 3
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$8/$SwitchMap$com$nd$android$u$cloud$activity$MessageFragmentActivity$FragmentType [I
aload 1
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/ordinal()I
iaload
tableswitch 1
L6
L7
L8
L9
default : L10
L10:
aload 3
astore 1
L11:
aload 1
ifnonnull L12
L1:
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMessageUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTab Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131361956
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvMessageTab Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131361957
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L4
L3:
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L13
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L13:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvMessageTab Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131361956
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTab Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131361957
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMessageUnderLine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactUnderLine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L4
L7:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mNoCactRcdr Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
ifnonnull L14
aload 0
invokestatic com/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment/newInstance()Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mNoCactRcdr Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
L14:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mNoCactRcdr Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
astore 1
goto L11
L6:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
ifnonnull L15
aload 0
aconst_null
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/newInstance(Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
L15:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
astore 1
goto L11
L8:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactFragment Lcom/nd/android/u/contact/fragment/ContactMainFragment;
ifnonnull L16
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment
dup
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment/<init>()V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactFragment Lcom/nd/android/u/contact/fragment/ContactMainFragment;
L16:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactFragment Lcom/nd/android/u/contact/fragment/ContactMainFragment;
astore 1
goto L11
L9:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
ifnonnull L17
aload 0
aload 2
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/newInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/cloud/fragment/SearchFragment;
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
L18:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
astore 1
goto L11
L17:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 2
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/changeSearchText(Ljava/lang/String;)V
goto L18
L12:
aload 1
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifeq L19
aload 4
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L20:
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mCurFragment Landroid/support/v4/app/Fragment;
aload 4
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L19:
aload 4
ldc_w 2131624268
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L20
.limit locals 5
.limit stack 3
.end method

.method private showRecentContactFragment()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/isEmpty()Z
ifeq L0
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc ""
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
return
L0:
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc ""
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public OnCancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public OnEditClick()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
bipush 10
invokevirtual com/common/android/ui/widget/MaskLayer/maskLayoutBelow(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
bipush 6
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mContactRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mAddRL Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMsgRL Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mPhotoRL Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnStateListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnStateListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initView()V
aload 0
ldc_w 2130903092
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/setContentView(I)V
aload 0
aload 0
ldc_w 2131624265
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
ldc_w 2131624266
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
ldc_w 2131494927
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mHeaderView Landroid/view/View;
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/initHeaderView(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
aload 0
new com/common/android/ui/widget/MaskLayer
dup
aload 0
invokespecial com/common/android/ui/widget/MaskLayer/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$2/<init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
invokevirtual com/common/android/ui/widget/MaskLayer/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
ldc_w 2131625536
if_icmpne L0
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/closeSearch()V
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc ""
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
L1:
return
L0:
iload 2
ldc_w 2131625533
if_icmpne L2
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/closeSearch()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
return
L2:
iload 2
ldc_w 2131625542
if_icmpne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/PhotoWallActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
ldc_w 2131625543
if_icmpne L1
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/AddFriendsActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onConnectStateChanged(I)V
aload 0
iconst_1
aconst_null
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/pushMessage(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/initView()V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/initEvent()V
new android/content/IntentFilter
dup
getstatic com/nd/android/util/BroadcastContact/GOTO_CONTACT_ACTION Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/gotoContactBroadcastReceiver Landroid/content/BroadcastReceiver;
aload 1
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L0
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpeq L1
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/contactObserver Lcom/nd/android/u/contact/listener/ContactObserver;
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/registerObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mTvContactTabMsgCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L0
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/contactObserver Lcom/nd/android/u/contact/listener/ContactObserver;
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/unregisterObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/gotoContactBroadcastReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/nd/android/u/cloud/activity/MessageFragmentActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 3
.end method

.method public onNetworkStateChanged(I)V
iload 1
ifne L0
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
L1:
return
L0:
iload 1
iconst_1
if_icmpeq L2
iload 1
iconst_2
if_icmpne L1
L2:
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onNewIntent(Landroid/content/Intent;)V
aload 1
ifnull L0
aload 1
ldc "click_flag"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mRecentContacts Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
iconst_5
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onOnlineStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onPause()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
invokevirtual ims/manager/IMSStateManager/unrigestStateObserver(Lims/outInterface/IStateObserver;)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onPause()V
return
.limit locals 1
.limit stack 3
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/setTitleText()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L1
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/closeSearch()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
ldc com/nd/android/u/controller/ChatConst$LocalMessageType
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registAllObserver(Ljava/lang/Class;Lcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/messageObserver Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/requstResultObserver Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
astore 1
aload 1
aload 0
invokevirtual ims/manager/IMSStateManager/registStateObserver(Lims/outInterface/IStateObserver;)V
aload 1
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifeq L2
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
L3:
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onResume()V
return
L2:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc "service and ConnectivityManager no equals"
invokestatic com/product/android/utils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
goto L3
L4:
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/processOfflineTip(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;I)V
goto L3
.limit locals 2
.limit stack 3
.end method

.method public onSearchCancel()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mLastTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L1
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc ""
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
L0:
return
L1:
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
return
.limit locals 1
.limit stack 3
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L1
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L3
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L4
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
return
L4:
aload 0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aload 1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showFragment(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/mFragmentSearch Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 1
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/changeSearchText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onStart()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity/curTabType Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L0
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/closeSearch()V
aload 0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity/showRecentContactFragment()V
L0:
return
.limit locals 1
.limit stack 2
.end method
