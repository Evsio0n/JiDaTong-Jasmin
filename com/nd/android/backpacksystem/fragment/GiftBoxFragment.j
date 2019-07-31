.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/GiftBoxFragment
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/GiftBoxFragment$1
.inner class inner com/nd/android/backpacksystem/fragment/GiftBoxFragment$2

.field private 'mGiftBoxAdapter' Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;

.field public 'mIsDoInitHeader' Z

.field private 'mLvGiftList' Landroid/widget/ListView;

.field private 'mPullRefreshListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mIsDoInitHeader Z
return
.limit locals 1
.limit stack 2
.end method

.method public static clearUnreadGiftMsg()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 0
aload 0
getstatic com/product/android/business/config/Configuration/TASKAPPID I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20070
aload 0
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static fetchRecvList(Landroid/content/Context;II)Ljava/util/List;
.signature "(Landroid/content/Context;II)Ljava/util/List<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;"
new com/nd/android/backpacksystem/serverinterface/impl/RecvList
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/RecvList/<init>()V
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
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
ifnonnull L0
aload 0
new com/nd/android/backpacksystem/adapter/GiftBoxAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/adapter/GiftBoxAdapter/<init>(Landroid/app/Activity;)V
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private initData()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initAdapter()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mLvGiftList Landroid/widget/ListView;
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/android/backpacksystem/fragment/GiftBoxFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mLvGiftList Landroid/widget/ListView;
new com/nd/android/backpacksystem/fragment/GiftBoxFragment$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/<init>(Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initGiftBoxHeader()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/initHeader()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mRlHeaderTitle Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mTvHeaderTitle Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/lvGiftList I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mLvGiftList Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method public static newInstance(I)Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
new com/nd/android/backpacksystem/fragment/GiftBoxFragment
dup
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "fragment_type"
iload 0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public initData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;)V"
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initAdapter()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
aload 1
invokevirtual com/nd/android/backpacksystem/adapter/GiftBoxAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/GiftBoxAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public notifyListData()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getReceiveItemList()Ljava/util/List;
invokevirtual com/nd/android/backpacksystem/adapter/GiftBoxAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mGiftBoxAdapter Lcom/nd/android/backpacksystem/adapter/GiftBoxAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/GiftBoxAdapter/notifyDataSetChanged()V
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
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initEvent()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initData()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mIsDoInitHeader Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/fragment/GiftBoxFragment/initGiftBoxHeader()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/getArguments()Landroid/os/Bundle;
ldc "fragment_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mFragmentType I
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/gift_box_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mRootView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onResume()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/notifyListData()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onStart()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/network_error_to_set_network I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public onStop()V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onStop()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshComplete()V
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mPullRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
return
.limit locals 1
.limit stack 1
.end method
