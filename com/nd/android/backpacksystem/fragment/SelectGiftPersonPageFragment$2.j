.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2
.super java/lang/Object
.implements com/nd/android/backpacksystem/listener/DialogCallBack
.enclosing method com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public doFail()V
return
.limit locals 1
.limit stack 0
.end method

.method public doRefresh(Ljava/lang/Object;)V
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
ifeq L0
new com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
iconst_1
anewarray com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
dup
iconst_0
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
aastore
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L0:
return
.limit locals 2
.limit stack 5
.end method
