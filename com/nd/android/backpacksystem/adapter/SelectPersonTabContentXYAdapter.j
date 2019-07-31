.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter
.super android/support/v4/app/FragmentPagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.method public <init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
return
.limit locals 2
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 0
.end method

.method public getCount()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
aconst_null
areturn
L0:
iconst_1
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/newInstance(I)Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
areturn
L1:
iconst_2
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/newInstance(I)Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
areturn
L2:
iconst_3
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/newInstance(I)Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getTitle(I)Ljava/lang/String;
ldc ""
areturn
.limit locals 2
.limit stack 1
.end method
