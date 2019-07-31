.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/GiftBoxFragment$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.enclosing method com/nd/android/backpacksystem/fragment/GiftBoxFragment/initEvent()V
.inner class inner com/nd/android/backpacksystem/fragment/GiftBoxFragment$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
instanceof com/nd/android/backpacksystem/activity/BackpackMainActivity
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/BackpackMainActivity
getfield com/nd/android/backpacksystem/activity/BackpackMainActivity/mBackpackMainFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_1
iconst_1
sipush 256
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
instanceof com/nd/android/backpacksystem/activity/MyGiftSingleActivity
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
getfield com/nd/android/backpacksystem/fragment/GiftBoxFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/MyGiftSingleActivity
getfield com/nd/android/backpacksystem/activity/MyGiftSingleActivity/mMyGiftSingleFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_1
iconst_1
sipush 256
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
L1:
return
.limit locals 2
.limit stack 5
.end method
