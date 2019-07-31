.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/MyGiftFragment
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.implements android/widget/AdapterView$OnItemClickListener
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$1
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$2
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$3
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$4

.field public static final 'TAG' Ljava/lang/String;

.field private 'mDialogCallBack' Lcom/nd/android/backpacksystem/listener/DialogCallBack;

.field private 'mDlgMyGift' Lcom/nd/android/backpacksystem/widget/DlgMyGift;

.field private 'mGridView' Landroid/widget/GridView;

.field private 'mMyGiftAdapter' Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;

.field private 'mPullRefreshGridView' Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

.field private 'mSendUserId' J

.field private 'mTvAvailableJF' Landroid/widget/TextView;

.field private 'mTvNdCoin' Landroid/widget/TextView;

.method static <clinit>()V
ldc com/nd/android/backpacksystem/fragment/MyGiftFragment
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/android/backpacksystem/fragment/MyGiftFragment/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
aload 0
new com/nd/android/backpacksystem/fragment/MyGiftFragment$4
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment$4/<init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)J
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mSendUserId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/cancelDlgMyGift()V
return
.limit locals 1
.limit stack 1
.end method

.method private cancelDlgMyGift()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/cancel()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public static fetchMyItemList(Landroid/content/Context;II)Ljava/util/List;
.signature "(Landroid/content/Context;II)Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;"
new com/nd/android/backpacksystem/serverinterface/impl/MyItemList
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/MyItemList/<init>()V
astore 3
new com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/<init>()V
astore 4
aload 4
iload 1
putfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
aload 4
iload 2
putfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
getstatic com/nd/android/backpacksystem/fragment/MyGiftFragment/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Justin param.mStart="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",param.mCount="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
aload 3
aload 0
aload 4
aconst_null
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult; 3
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse; 1
astore 0
aload 0
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isObjectValid()Z
ifne L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isSuccess()Z
ifeq L1
aload 0
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
checkcast java/util/List
areturn
L1:
new java/util/ArrayList
dup
iconst_0
invokespecial java/util/ArrayList/<init>(I)V
areturn
.limit locals 5
.limit stack 5
.end method

.method private initAdapter()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
ifnonnull L0
aload 0
new com/nd/android/backpacksystem/adapter/MyGiftAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/adapter/MyGiftAdapter/<init>(Landroid/app/Activity;)V
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private initData()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/initAdapter()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mGridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
new com/nd/android/backpacksystem/fragment/MyGiftFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshGridView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mGridView Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mGridView Landroid/widget/GridView;
new com/nd/android/backpacksystem/fragment/MyGiftFragment$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment$2/<init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
invokevirtual android/widget/GridView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/gvMyGift I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshGridView
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshGridView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshGridView/getRefreshableView()Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mGridView Landroid/widget/GridView;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tvNdCoin I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mTvNdCoin Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mTvNdCoin Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getInterfaceForDifference()Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
invokeinterface com/nd/android/backpacksystem/interfaces/InterfaceForDifference/getCoinIcon()I 0
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tvAvailableJF I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mTvAvailableJF Landroid/widget/TextView;
return
.limit locals 1
.limit stack 5
.end method

.method public static newInstance(IJ)Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
new com/nd/android/backpacksystem/fragment/MyGiftFragment
dup
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/<init>()V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "fragment_type"
iload 0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 4
ldc "user_id"
lload 1
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
aload 4
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/setArguments(Landroid/os/Bundle;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method protected cancelRetry()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMainState()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/cancelDlgMyGift()V
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMyGiftState()Z
ifeq L1
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/cancelDlgSendGiftWithMsg()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method protected doRetry()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMainState()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/doUseGift()V
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMyGiftState()Z
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/isShowing()Z
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/doSend()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public notifyListData()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItemList()Ljava/util/List;
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/initData()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "fragment_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mFragmentType I
aload 0
aload 1
ldc "user_id"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mSendUserId J
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/my_gift_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mRootView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
iflt L0
iload 3
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/getRealCount()I
if_icmpge L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
iload 3
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/data/MyItems
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
ifgt L1
L0:
return
L1:
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMainState()Z
ifeq L2
aload 0
new com/nd/android/backpacksystem/widget/DlgMyGift
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$style/dlg_my_gift I
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/<init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
iload 3
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/data/MyItems
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/setData(Lcom/nd/android/backpacksystem/data/MyItems;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/setCanceledOnTouchOutside(Z)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgMyGift Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/show()V
L2:
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMyGiftState()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mMyGiftAdapter Lcom/nd/android/backpacksystem/adapter/MyGiftAdapter;
iload 3
invokevirtual com/nd/android/backpacksystem/adapter/MyGiftAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/data/MyItems
astore 2
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 2
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 6
aload 6
ifnonnull L3
iconst_0
istore 3
L4:
iload 3
ifne L5
aload 6
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/can_not_give_item I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 6
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
return
L3:
aload 6
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getExclusiveFlag()Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_GIVE Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
if_acmpne L6
aload 1
invokevirtual com/nd/android/backpacksystem/data/MyItems/isInWhiteList()Z
ifne L6
iconst_0
istore 3
goto L4
L6:
iconst_1
istore 3
goto L4
L5:
new com/nd/android/backpacksystem/fragment/MyGiftFragment$3
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/MyGiftFragment$3/<init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUserSimpleList(Ljava/util/List;)Ljava/util/ArrayList;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L7
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 1
L8:
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$style/dlg_my_gift I
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/<init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 1
aload 2
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setData(Lcom/product/android/commonInterface/contact/OapUserSimple;J)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setCanceledOnTouchOutside(Z)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/show()V
return
L7:
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
goto L8
.limit locals 7
.limit stack 6
.end method

.method public onResume()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/notifyListData()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshComplete()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mPullRefreshGridView Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshGridView/onRefreshComplete()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public refreshErpGrowUpInfo(II)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mTvAvailableJF Landroid/widget/TextView;
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mTvNdCoin Landroid/widget/TextView;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected requestSuccess()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public setSendUserId(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mSendUserId J
return
.limit locals 3
.limit stack 3
.end method
