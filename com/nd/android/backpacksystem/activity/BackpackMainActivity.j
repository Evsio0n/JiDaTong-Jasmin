.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/activity/BackpackMainActivity
.super com/nd/android/backpacksystem/activity/BackpackBaseActivity

.field public 'mBackpackMainFragment' Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/backpacksystem/R$layout/activity_backpack_main I
invokevirtual com/nd/android/backpacksystem/activity/BackpackMainActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/activity/BackpackMainActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
getstatic com/nd/android/backpacksystem/R$id/fragment I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/backpacksystem/fragment/BackpackMainFragment
putfield com/nd/android/backpacksystem/activity/BackpackMainActivity/mBackpackMainFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/hasData()Z
ifeq L0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getRedRoseAmount()I
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/setRedRoseAmount(I)V
L0:
aload 0
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method
