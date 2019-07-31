.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter
.super android/support/v4/app/FragmentStatePagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field public 'CurrentTabId' I

.field protected 'mTitles' [Ljava/lang/String;

.field private 'parentHandler' Landroid/os/Handler;

.field private 'searchByKey' Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;

.field private 'searchByNum' Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;

.method public <init>(Landroid/support/v4/app/FragmentManager;Landroid/os/Handler;[Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentStatePagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/mTitles [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/CurrentTabId I
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/parentHandler Landroid/os/Handler;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/mTitles [Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method public cleanSubEditText(I)V
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByNum Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanEidtText()V
return
L1:
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByKey Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanEidtText()V
return
.limit locals 2
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/mTitles [Ljava/lang/String;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
iload 1
tableswitch 0
L0
L1
default : L2
L2:
aconst_null
areturn
L0:
aload 0
new com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment
dup
invokespecial com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment/<init>()V
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByNum Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByNum Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByNum Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
astore 3
aload 2
ldc "fragment"
iload 1
iconst_1
iadd
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
aload 2
invokevirtual android/support/v4/app/Fragment/setArguments(Landroid/os/Bundle;)V
aload 3
areturn
L1:
aload 0
new com/nd/android/u/contact/fragment/XYSearchGroupByKeymFragment
dup
invokespecial com/nd/android/u/contact/fragment/XYSearchGroupByKeymFragment/<init>()V
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByKey Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByKey Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/searchByKey Lcom/nd/android/u/contact/fragment/XYSearchGroupBaseFragment;
astore 3
aload 2
ldc "fragment"
iload 1
iconst_1
iadd
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
aload 2
invokevirtual android/support/v4/app/Fragment/setArguments(Landroid/os/Bundle;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getTitle(I)Ljava/lang/String;
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/mTitles [Ljava/lang/String;
arraylength
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/mTitles [Ljava/lang/String;
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

.method public setmCurrentTabId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/CurrentTabId I
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/CurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/cleanSubEditText(I)V
return
.limit locals 2
.limit stack 2
.end method
