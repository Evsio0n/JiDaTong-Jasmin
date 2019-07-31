.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/MyGiftFragment$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/backpacksystem/fragment/MyGiftFragment/initEvent()V
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$2

.field private 'mScrollState' I

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/mScrollState I
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
iload 4
iconst_1
isub
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/mScrollState I
tableswitch 0
L0
L0
L0
default : L0
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iconst_1
isub
if_icmpne L0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getCurrentLoadDataSize()I
bipush 20
if_icmpge L1
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getCurrentLoadDataSize()I
iflt L1
L0:
aload 0
iload 2
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/mScrollState I
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMainState()Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/BackpackMainActivity
getfield com/nd/android/backpacksystem/activity/BackpackMainActivity/mBackpackMainFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_0
iconst_0
sipush 256
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
L2:
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMyGiftState()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/MyGiftSingleActivity
getfield com/nd/android/backpacksystem/activity/MyGiftSingleActivity/mMyGiftSingleFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_0
iconst_0
sipush 256
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
goto L0
.limit locals 3
.limit stack 5
.end method
