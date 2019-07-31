.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/GiftBoxFragment$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/backpacksystem/fragment/GiftBoxFragment/initEvent()V
.inner class inner com/nd/android/backpacksystem/fragment/GiftBoxFragment$2

.field private 'mScrollState' I

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/mScrollState I
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
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/mScrollState I
tableswitch 1
L1
L1
default : L0
L0:
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/isMainState()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/BackpackMainActivity
getfield com/nd/android/backpacksystem/activity/BackpackMainActivity/mBackpackMainFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_0
iconst_0
sipush 257
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
return
.limit locals 5
.limit stack 5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
iload 2
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$2/mScrollState I
return
.limit locals 3
.limit stack 2
.end method
