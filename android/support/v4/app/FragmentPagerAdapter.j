.bytecode 50.0
.class public synchronized abstract android/support/v4/app/FragmentPagerAdapter
.super android/support/v4/view/PagerAdapter

.field private static final 'DEBUG' Z = 0


.field private static final 'TAG' Ljava/lang/String; = "FragmentPagerAdapter"

.field private 'mCurTransaction' Landroid/support/v4/app/FragmentTransaction;

.field private 'mCurrentPrimaryItem' Landroid/support/v4/app/Fragment;

.field private final 'mFragmentManager' Landroid/support/v4/app/FragmentManager;

.method public <init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aconst_null
putfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 0
aconst_null
putfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
aload 0
aload 1
putfield android/support/v4/app/FragmentPagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
return
.limit locals 2
.limit stack 2
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "android:switcher:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnonnull L0
aload 0
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
putfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
L0:
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 3
checkcast android/support/v4/app/Fragment
invokevirtual android/support/v4/app/FragmentTransaction/detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
return
.limit locals 4
.limit stack 2
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
aconst_null
putfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/executePendingTransactions()Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
ifnonnull L0
aload 0
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
putfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
L0:
aload 0
iload 2
invokevirtual android/support/v4/app/FragmentPagerAdapter/getItemId(I)J
lstore 3
aload 1
invokevirtual android/view/ViewGroup/getId()I
lload 3
invokestatic android/support/v4/app/FragmentPagerAdapter/makeFragmentName(IJ)Ljava/lang/String;
astore 5
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mFragmentManager Landroid/support/v4/app/FragmentManager;
aload 5
invokevirtual android/support/v4/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 5
aload 5
ifnull L1
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 5
invokevirtual android/support/v4/app/FragmentTransaction/attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 5
astore 1
L2:
aload 1
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
if_acmpeq L3
aload 1
iconst_0
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 1
iconst_0
invokevirtual android/support/v4/app/Fragment/setUserVisibleHint(Z)V
L3:
aload 1
areturn
L1:
aload 0
iload 2
invokevirtual android/support/v4/app/FragmentPagerAdapter/getItem(I)Landroid/support/v4/app/Fragment;
astore 5
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurTransaction Landroid/support/v4/app/FragmentTransaction;
aload 1
invokevirtual android/view/ViewGroup/getId()I
aload 5
aload 1
invokevirtual android/view/ViewGroup/getId()I
lload 3
invokestatic android/support/v4/app/FragmentPagerAdapter/makeFragmentName(IJ)Ljava/lang/String;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 5
astore 1
goto L2
.limit locals 6
.limit stack 6
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
return
.limit locals 3
.limit stack 0
.end method

.method public saveState()Landroid/os/Parcelable;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 3
checkcast android/support/v4/app/Fragment
astore 1
aload 1
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
if_acmpeq L0
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
iconst_0
invokevirtual android/support/v4/app/Fragment/setMenuVisibility(Z)V
aload 0
getfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
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
putfield android/support/v4/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/support/v4/app/Fragment;
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
