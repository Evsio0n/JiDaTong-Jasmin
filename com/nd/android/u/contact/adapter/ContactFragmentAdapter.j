.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/ContactFragmentAdapter
.super android/support/v4/app/FragmentStatePagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field public 'CurrentTabId' I

.field private 'contactFragment' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.field private 'friendFragment' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.field private 'gid' J

.field private 'groupFragment' Lcom/nd/android/u/contact/fragment/GroupListFragment;

.field protected 'mTitles' [Ljava/lang/String;

.field private 'parentHandler' Landroid/os/Handler;

.field private 'selectModule' Z

.method public <init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentStatePagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
ifnonnull L0
aload 0
aload 0
invokespecial com/nd/android/u/contact/adapter/ContactFragmentAdapter/getTitles()[Ljava/lang/String;
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/support/v4/app/FragmentManager;ZLandroid/os/Handler;[Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentStatePagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/parentHandler Landroid/os/Handler;
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
ifnonnull L0
aload 0
aload 0
invokespecial com/nd/android/u/contact/adapter/ContactFragmentAdapter/getTitles()[Ljava/lang/String;
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
L0:
return
.limit locals 5
.limit stack 2
.end method

.method private getTitles()[Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/ISEXITPSP Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$array/contact_group_add_psp I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$array/contact_group I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
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
L2
L3
default : L4
L4:
aconst_null
areturn
L0:
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment
dup
invokespecial com/nd/android/u/contact/fragment/FriendListFragment/<init>()V
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/gid J
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/setGid(J)V
L5:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/setSelectModule(Z)V
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
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
iconst_0
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setSearchDept(Z)V
aload 0
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/newInstance()Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
ifeq L6
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
iconst_1
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setSelectMode(Z)Lcom/nd/android/u/contact/ui/base/ContactBaseFragment2;
pop
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/gid J
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setGid(J)V
L6:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setHandlerSelected(Landroid/os/Handler;)Lcom/nd/android/u/contact/ui/base/ContactBaseFragment2;
pop
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
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
L2:
aload 0
new com/nd/android/u/contact/fragment/GroupListFragment
dup
invokespecial com/nd/android/u/contact/fragment/GroupListFragment/<init>()V
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
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
L3:
getstatic com/product/android/business/config/Configuration/ISEXITPSP Z
ifeq L4
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getTitle(I)Ljava/lang/String;
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
arraylength
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/mTitles [Ljava/lang/String;
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

.method public final isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public notifyChildDateChange(I)V
iload 1
ifne L0
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/refreshNodes()V
L1:
return
L0:
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/notityAdapterDateChange()V
return
.limit locals 2
.limit stack 2
.end method

.method public final notifyError(I)V
iconst_1
iload 1
if_icmpne L0
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public final notifyFinish(I)V
iconst_1
iload 1
if_icmpne L0
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public final refresh()V
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
L0:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/contactFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/refreshNodes()V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
ifnull L2
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refresh()V
L2:
return
.limit locals 1
.limit stack 1
.end method

.method public final refresh(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/friendFragment Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
return
L2:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refresh()V
return
.limit locals 2
.limit stack 1
.end method

.method public final refreshGroupList()V
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refreshGroupAdapter()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/selectModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public setmCurrentTabId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
iconst_1
if_icmpne L0
L1:
aload 0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh()V
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/CurrentTabId I
iconst_2
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/ContactFragmentAdapter/groupFragment Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/init()V
goto L1
.limit locals 2
.limit stack 2
.end method
