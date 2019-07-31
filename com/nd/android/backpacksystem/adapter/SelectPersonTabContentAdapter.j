.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter
.super android/support/v4/app/FragmentPagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field protected 'mTitles' [Ljava/lang/String;

.method public <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/mTitles [Ljava/lang/String;
aload 0
aload 2
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getInterfaceForDifference()Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
invokeinterface com/nd/android/backpacksystem/interfaces/InterfaceForDifference/getSelectPersonForSendTabTitle()I 0
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/mTitles [Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/mTitles [Ljava/lang/String;
arraylength
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

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getTitle(I)Ljava/lang/String;
iload 1
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/mTitles [Ljava/lang/String;
arraylength
if_icmpge L0
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/mTitles [Ljava/lang/String;
iload 1
aaload
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "title"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
