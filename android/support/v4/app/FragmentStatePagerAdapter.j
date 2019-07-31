.bytecode 50.0
.class public synchronized abstract android/support/v4/app/FragmentStatePagerAdapter
.super android/support/v4/view/PagerAdapter

.field private static final 'DEBUG' Z = 0


.field private static final 'TAG' Ljava/lang/String; = "FragmentStatePagerAdapter"

.field private 'mCurTransaction' Landroid/support/v4/app/FragmentTransaction;

.field private 'mCurrentPrimaryItem' Landroid/support/v4/app/Fragment;

.field private final 'mFragmentManager' Landroid/support/v4/app/FragmentManager;

.field private 'mFragments' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"

.field private 'mSavedState' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"

.method public <init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aconst_null
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
aload 0
aconst_null
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
aload 0
aload 1
putfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
return
.limit locals 2
.limit stack 3
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 3
checkcast android/support/v4/app/Fragment
astore 1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnonnull L0
aload 0
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
L0:
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmpgt L1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
aconst_null
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
iload 2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
aload 1
invokevirtual android/support/v4/app/FragmentManager/saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
iload 2
aconst_null
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
.limit locals 4
.limit stack 4
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
aconst_null
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/executePendingTransactions()Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmple L0
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L0
aload 3
areturn
L0:
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnonnull L1
aload 0
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
L1:
aload 0
iload 2
invokevirtual android/support/v4/app/FragmentStatePagerAdapter/getItem(I)Landroid/support/v4/app/Fragment;
astore 3
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmple L2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment$SavedState
astore 4
aload 4
ifnull L2
aload 3
aload 4
invokevirtual android/support/v4/app/Fragment/setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
L2:
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmpgt L3
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
aconst_null
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 3
iconst_0
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 3
iconst_0
invokevirtual android/support/v4/app/Fragment/setUserVisibleHint(Z)V
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
iload 2
aload 3
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 1
invokevirtual android/view/ViewGroup/getId()I
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 2
checkcast android/support/v4/app/Fragment
invokevirtual android/support/v4/app/Fragment/getView()Landroid/view/View;
aload 1
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
aload 1
ifnull L0
aload 1
checkcast android/os/Bundle
astore 1
aload 1
aload 2
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
aload 1
ldc "states"
invokevirtual android/os/Bundle/getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
astore 2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 2
ifnull L1
iconst_0
istore 3
L2:
iload 3
aload 2
arraylength
if_icmpge L1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
aload 2
iload 3
aaload
checkcast android/support/v4/app/Fragment$SavedState
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L1:
aload 1
invokevirtual android/os/Bundle/keySet()Ljava/util/Set;
invokeinterface java/lang/Iterable/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
ldc "f"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
aload 4
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
aload 1
aload 4
invokevirtual android/support/v4/app/FragmentManager/getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 5
aload 5
ifnull L4
L5:
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 3
if_icmpgt L6
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
aconst_null
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L5
L6:
aload 5
iconst_0
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
iload 3
aload 5
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
goto L3
L4:
ldc "FragmentStatePagerAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bad fragment at key "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L3
L0:
return
.limit locals 6
.limit stack 3
.end method

.method public saveState()Landroid/os/Parcelable;
aconst_null
astore 2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
anewarray android/support/v4/app/Fragment$SavedState
astore 3
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mSavedState Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 2
ldc "states"
aload 3
invokevirtual android/os/Bundle/putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
L0:
iconst_0
istore 1
L1:
iload 1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragments Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 2
astore 3
aload 4
ifnull L3
aload 2
astore 3
aload 2
ifnonnull L4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "f"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
aload 3
aload 2
aload 4
invokevirtual android/support/v4/app/FragmentManager/putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
L3:
iload 1
iconst_1
iadd
istore 1
aload 3
astore 2
goto L1
L2:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 3
checkcast android/support/v4/app/Fragment
astore 1
aload 1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
if_acmpeq L0
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
iconst_0
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 0
getfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
iconst_0
invokevirtual android/support/v4/app/Fragment/setUserVisibleHint(Z)V
L1:
aload 1
ifnull L2
aload 1
iconst_1
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 1
iconst_1
invokevirtual android/support/v4/app/Fragment/setUserVisibleHint(Z)V
L2:
aload 0
aload 1
putfield android/support/v4/app/FragmentStatePagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
return
.limit locals 2
.limit stack 0
.end method
