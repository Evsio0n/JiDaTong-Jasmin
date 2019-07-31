.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/MyGiftFragment$4
.super java/lang/Object
.implements com/nd/android/backpacksystem/listener/DialogCallBack
.enclosing method com/nd/android/backpacksystem/fragment/MyGiftFragment
.inner class inner com/nd/android/backpacksystem/fragment/MyGiftFragment$4

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public doFail()V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aconst_null
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/requestFaildialog(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public doRefresh(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMainState()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
invokestatic com/nd/android/backpacksystem/fragment/MyGiftFragment/access$100(Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/BackpackMainActivity
getfield com/nd/android/backpacksystem/activity/BackpackMainActivity/mBackpackMainFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
iconst_1
iconst_0
sipush 256
iconst_0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/isMyGiftState()Z
ifeq L1
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
ifeq L1
new com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/MyGiftFragment$4/this$0 Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
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
return
.limit locals 2
.limit stack 5
.end method
