.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/MainTabContentAdapter
.super android/support/v4/app/FragmentPagerAdapter

.field private 'mFragmentType' I

.field private 'mGiftBoxFragment' Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;

.field private 'mMyGiftFragment' Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;

.field private 'mSendUserId' J

.method public <init>(Landroid/support/v4/app/FragmentManager;IJ)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
sipush 260
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
aload 0
lconst_0
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mSendUserId J
aload 0
iload 2
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
aload 0
lload 3
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mSendUserId J
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
tableswitch 258
L0
L0
L1
default : L2
L2:
iconst_0
ireturn
L1:
iconst_2
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGiftBoxFragment()Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mGiftBoxFragment Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
tableswitch 258
L0
L1
L2
default : L3
L3:
aconst_null
areturn
L2:
iload 1
ifne L4
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mSendUserId J
invokestatic com/nd/android/backpacksystem/fragment/MyGiftFragment/newInstance(IJ)Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mMyGiftFragment Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mMyGiftFragment Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
areturn
L4:
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/newInstance(I)Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mGiftBoxFragment Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mGiftBoxFragment Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
areturn
L1:
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mSendUserId J
invokestatic com/nd/android/backpacksystem/fragment/MyGiftFragment/newInstance(IJ)Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mMyGiftFragment Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mMyGiftFragment Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
areturn
L0:
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mFragmentType I
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/newInstance(I)Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
putfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mGiftBoxFragment Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mGiftBoxFragment Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getMyGiftFragment()Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/MainTabContentAdapter/mMyGiftFragment Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
areturn
.limit locals 1
.limit stack 1
.end method
