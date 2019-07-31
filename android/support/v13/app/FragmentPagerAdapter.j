.bytecode 50.0
.class public synchronized abstract android/support/v13/app/FragmentPagerAdapter
.super android/support/v4/view/PagerAdapter

.field private static final 'DEBUG' Z = 0


.field private static final 'TAG' Ljava/lang/String; = "FragmentPagerAdapter"

.field private 'mCurTransaction' Landroid/app/FragmentTransaction;

.field private 'mCurrentPrimaryItem' Landroid/app/Fragment;

.field private final 'mFragmentManager' Landroid/app/FragmentManager;

.method public <init>(Landroid/app/FragmentManager;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aconst_null
putfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
aload 0
aconst_null
putfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
aload 0
aload 1
putfield android/support/v13/app/FragmentPagerAdapter/mFragmentManager Landroid/app/FragmentManager;
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
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
ifnonnull L0
aload 0
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
putfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
L0:
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
aload 3
checkcast android/app/Fragment
invokevirtual android/app/FragmentTransaction/detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
return
.limit locals 4
.limit stack 2
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
ifnull L0
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
invokevirtual android/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
aconst_null
putfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/executePendingTransactions()Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
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
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
ifnonnull L0
aload 0
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
putfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
L0:
aload 0
iload 2
invokevirtual android/support/v13/app/FragmentPagerAdapter/getItemId(I)J
lstore 3
aload 1
invokevirtual android/view/ViewGroup/getId()I
lload 3
invokestatic android/support/v13/app/FragmentPagerAdapter/makeFragmentName(IJ)Ljava/lang/String;
astore 5
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mFragmentManager Landroid/app/FragmentManager;
aload 5
invokevirtual android/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
astore 5
aload 5
ifnull L1
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
aload 5
invokevirtual android/app/FragmentTransaction/attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
aload 5
astore 1
L2:
aload 1
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
if_acmpeq L3
aload 1
iconst_0
invokestatic android/support/v13/app/FragmentCompat/setMenuVisibility(Landroid/app/Fragment;Z)V
aload 1
iconst_0
invokestatic android/support/v13/app/FragmentCompat/setUserVisibleHint(Landroid/app/Fragment;Z)V
L3:
aload 1
areturn
L1:
aload 0
iload 2
invokevirtual android/support/v13/app/FragmentPagerAdapter/getItem(I)Landroid/app/Fragment;
astore 5
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurTransaction Landroid/app/FragmentTransaction;
aload 1
invokevirtual android/view/ViewGroup/getId()I
aload 5
aload 1
invokevirtual android/view/ViewGroup/getId()I
lload 3
invokestatic android/support/v13/app/FragmentPagerAdapter/makeFragmentName(IJ)Ljava/lang/String;
invokevirtual android/app/FragmentTransaction/add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
pop
aload 5
astore 1
goto L2
.limit locals 6
.limit stack 6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 2
checkcast android/app/Fragment
invokevirtual android/app/Fragment/getView()Landroid/view/View;
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
checkcast android/app/Fragment
astore 1
aload 1
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
if_acmpeq L0
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
ifnull L1
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
iconst_0
invokestatic android/support/v13/app/FragmentCompat/setMenuVisibility(Landroid/app/Fragment;Z)V
aload 0
getfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
iconst_0
invokestatic android/support/v13/app/FragmentCompat/setUserVisibleHint(Landroid/app/Fragment;Z)V
L1:
aload 1
ifnull L2
aload 1
iconst_1
invokestatic android/support/v13/app/FragmentCompat/setMenuVisibility(Landroid/app/Fragment;Z)V
aload 1
iconst_1
invokestatic android/support/v13/app/FragmentCompat/setUserVisibleHint(Landroid/app/Fragment;Z)V
L2:
aload 0
aload 1
putfield android/support/v13/app/FragmentPagerAdapter/mCurrentPrimaryItem Landroid/app/Fragment;
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
