.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Boolean;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private FetchData inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData outer com/nd/android/backpacksystem/fragment/BackpackMainFragment

.field private 'mErpGrowUpInfo' Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;

.field private 'mFromFragment' I

.field private 'mIsPullRefresh' Z

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;ZI)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mIsPullRefresh Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mFromFragment I
aload 0
iload 2
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mIsPullRefresh Z
aload 0
iload 3
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mFromFragment I
return
.limit locals 4
.limit stack 2
.end method

.method private fetchBaseItemPropertyList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;"
new com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList/<init>()V
astore 1
new com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/<init>()V
astore 2
aload 2
iconst_0
putfield com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/mUpdateTime I
aload 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
aload 2
aconst_null
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult; 3
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse; 1
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isObjectValid()Z
ifne L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isSuccess()Z
ifeq L1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
checkcast java/util/List
areturn
L1:
new java/util/ArrayList
dup
iconst_0
invokespecial java/util/ArrayList/<init>(I)V
areturn
.limit locals 3
.limit stack 5
.end method

.method protected transient doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
aload 1
iconst_0
aaload
astore 1
aload 0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getInterfaceForDifference()Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
invokeinterface com/nd/android/backpacksystem/interfaces/InterfaceForDifference/getCoinAndScore(Landroid/content/Context;)Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo; 1
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mErpGrowUpInfo Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/fetchBaseItemPropertyList()Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
iconst_0
bipush 20
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/fetchRecvList(Landroid/content/Context;II)Ljava/util/List;
astore 2
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
iconst_0
bipush 21
invokestatic com/nd/android/backpacksystem/fragment/MyGiftFragment/fetchMyItemList(Landroid/content/Context;II)Ljava/util/List;
astore 3
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/clearData()V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/addItemProperty(Ljava/util/List;)V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendReceiveItems(Ljava/util/List;)V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 3
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendMyItems(Ljava/util/List;)V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getRedRoseAmount()I
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/setRedRoseAmount(I)V
L2:
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mFromFragment I
tableswitch 256
L3
L4
default : L5
L5:
goto L2
L3:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItemSize()I
bipush 21
invokestatic com/nd/android/backpacksystem/fragment/MyGiftFragment/fetchMyItemList(Landroid/content/Context;II)Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L6
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L6:
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendMyItems(Ljava/util/List;)V
goto L2
L4:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getReceiveItemSize()I
bipush 21
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/fetchRecvList(Landroid/content/Context;II)Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendReceiveItems(Ljava/util/List;)V
goto L2
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Boolean;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$200(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MainTabContentAdapter/getMyGiftFragment()Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
astore 2
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$200(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MainTabContentAdapter/getGiftBoxFragment()Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
astore 3
aload 2
ifnull L2
aload 2
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mErpGrowUpInfo Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
getfield com/nd/android/backpacksystem/data/ErpGrowUpInfo/mAvailableJF I
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mErpGrowUpInfo Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
getfield com/nd/android/backpacksystem/data/ErpGrowUpInfo/mNdCoin I
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/refreshErpGrowUpInfo(II)V
L2:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/mIsPullRefresh Z
ifeq L3
aload 2
ifnull L4
aload 2
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/refreshComplete()V
L4:
aload 3
ifnull L3
aload 3
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/refreshComplete()V
L3:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
aload 2
ifnull L5
aload 2
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/notifyListData()V
L5:
aload 3
ifnull L1
aload 3
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getReceiveItemList()Ljava/util/List;
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/initData(Ljava/util/List;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
