.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/activity/MyGiftSingleActivity
.super com/nd/android/backpacksystem/activity/BackpackBaseActivity

.field public 'mMyGiftSingleFragment' Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;

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
invokevirtual com/nd/android/backpacksystem/activity/MyGiftSingleActivity/setContentView(I)V
aload 0
getfield com/nd/android/backpacksystem/activity/MyGiftSingleActivity/mMyGiftSingleFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/activity/MyGiftSingleActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
getstatic com/nd/android/backpacksystem/R$id/fragment I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/backpacksystem/fragment/BackpackMainFragment
putfield com/nd/android/backpacksystem/activity/MyGiftSingleActivity/mMyGiftSingleFragment Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
L0:
return
.limit locals 2
.limit stack 3
.end method
