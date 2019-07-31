.bytecode 50.0
.class public synchronized android/support/v4/app/Fragment
.super java/lang/Object
.implements android/content/ComponentCallbacks
.implements android/view/View$OnCreateContextMenuListener
.inner class inner android/support/v4/app/Fragment$1
.inner class public static InstantiationException inner android/support/v4/app/Fragment$InstantiationException outer android/support/v4/app/Fragment
.inner class public static SavedState inner android/support/v4/app/Fragment$SavedState outer android/support/v4/app/Fragment
.inner class static final inner android/support/v4/app/Fragment$SavedState$1

.field static final 'ACTIVITY_CREATED' I = 2


.field static final 'CREATED' I = 1


.field static final 'INITIALIZING' I = 0


.field static final 'RESUMED' I = 5


.field static final 'STARTED' I = 4


.field static final 'STOPPED' I = 3


.field private static final 'sClassMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"

.field 'mActivity' Landroid/support/v4/app/FragmentActivity;

.field 'mAdded' Z

.field 'mAnimatingAway' Landroid/view/View;

.field 'mArguments' Landroid/os/Bundle;

.field 'mBackStackNesting' I

.field 'mCalled' Z

.field 'mCheckedForLoaderManager' Z

.field 'mChildFragmentManager' Landroid/support/v4/app/FragmentManagerImpl;

.field 'mContainer' Landroid/view/ViewGroup;

.field 'mContainerId' I

.field 'mDeferStart' Z

.field 'mDetached' Z

.field 'mFragmentId' I

.field 'mFragmentManager' Landroid/support/v4/app/FragmentManagerImpl;

.field 'mFromLayout' Z

.field 'mHasMenu' Z

.field 'mHidden' Z

.field 'mInLayout' Z

.field 'mIndex' I

.field 'mInnerView' Landroid/view/View;

.field 'mLoaderManager' Landroid/support/v4/app/LoaderManagerImpl;

.field 'mLoadersStarted' Z

.field 'mMenuVisible' Z

.field 'mNextAnim' I

.field 'mParentFragment' Landroid/support/v4/app/Fragment;

.field 'mRemoving' Z

.field 'mRestored' Z

.field 'mResumed' Z

.field 'mRetainInstance' Z

.field 'mRetaining' Z

.field 'mSavedFragmentState' Landroid/os/Bundle;

.field 'mSavedViewState' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"

.field 'mState' I

.field 'mStateAfterAnimating' I

.field 'mTag' Ljava/lang/String;

.field 'mTarget' Landroid/support/v4/app/Fragment;

.field 'mTargetIndex' I

.field 'mTargetRequestCode' I

.field 'mUserVisibleHint' Z

.field 'mView' Landroid/view/View;

.field 'mWho' Ljava/lang/String;

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic android/support/v4/app/Fragment/sClassMap Ljava/util/HashMap;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mState I
aload 0
iconst_m1
putfield android/support/v4/app/Fragment/mIndex I
aload 0
iconst_m1
putfield android/support/v4/app/Fragment/mTargetIndex I
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mMenuVisible Z
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mUserVisibleHint Z
return
.limit locals 1
.limit stack 2
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 0
aload 1
aconst_null
invokestatic android/support/v4/app/Fragment/instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
.catch java/lang/ClassNotFoundException from L0 to L1 using L2
.catch java/lang/InstantiationException from L0 to L1 using L3
.catch java/lang/IllegalAccessException from L0 to L1 using L4
.catch java/lang/ClassNotFoundException from L5 to L6 using L2
.catch java/lang/InstantiationException from L5 to L6 using L3
.catch java/lang/IllegalAccessException from L5 to L6 using L4
.catch java/lang/ClassNotFoundException from L6 to L7 using L2
.catch java/lang/InstantiationException from L6 to L7 using L3
.catch java/lang/IllegalAccessException from L6 to L7 using L4
.catch java/lang/ClassNotFoundException from L8 to L9 using L2
.catch java/lang/InstantiationException from L8 to L9 using L3
.catch java/lang/IllegalAccessException from L8 to L9 using L4
L0:
getstatic android/support/v4/app/Fragment/sClassMap Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Class
astore 4
L1:
aload 4
astore 3
aload 4
ifnonnull L6
L5:
aload 0
invokevirtual android/content/Context/getClassLoader()Ljava/lang/ClassLoader;
aload 1
invokevirtual java/lang/ClassLoader/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 3
getstatic android/support/v4/app/Fragment/sClassMap Ljava/util/HashMap;
aload 1
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L6:
aload 3
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 0
L7:
aload 2
ifnull L9
L8:
aload 2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
aload 0
aload 2
putfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
L9:
aload 0
areturn
L2:
astore 0
new android/support/v4/app/Fragment$InstantiationException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to instantiate fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": make sure class name exists, is public, and has an"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " empty constructor that is public"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokespecial android/support/v4/app/Fragment$InstantiationException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 0
new android/support/v4/app/Fragment$InstantiationException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to instantiate fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": make sure class name exists, is public, and has an"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " empty constructor that is public"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokespecial android/support/v4/app/Fragment$InstantiationException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L4:
astore 0
new android/support/v4/app/Fragment$InstantiationException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to instantiate fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": make sure class name exists, is public, and has an"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " empty constructor that is public"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokespecial android/support/v4/app/Fragment$InstantiationException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mFragmentId=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mFragmentId I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc " mContainerId=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mContainerId I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc " mTag="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mState="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mState I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc " mIndex="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc " mWho="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc " mBackStackNesting="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mBackStackNesting I
invokevirtual java/io/PrintWriter/println(I)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mAdded="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mAdded Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mRemoving="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mRemoving Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mResumed="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mResumed Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mFromLayout="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mFromLayout Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mInLayout="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mInLayout Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mHidden="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mDetached="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mDetached Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mMenuVisible="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mHasMenu="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mRetainInstance="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mRetainInstance Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mRetaining="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mRetaining Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mUserVisibleHint="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 0
getfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mFragmentManager="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L0:
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L1
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mActivity="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L1:
aload 0
getfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
ifnull L2
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mParentFragment="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L2:
aload 0
getfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
ifnull L3
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mArguments="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L3:
aload 0
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ifnull L4
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mSavedFragmentState="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L4:
aload 0
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
ifnull L5
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mSavedViewState="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L5:
aload 0
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
ifnull L6
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mTarget="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
invokevirtual java/io/PrintWriter/print(Ljava/lang/Object;)V
aload 3
ldc " mTargetRequestCode="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mTargetRequestCode I
invokevirtual java/io/PrintWriter/println(I)V
L6:
aload 0
getfield android/support/v4/app/Fragment/mNextAnim I
ifeq L7
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mNextAnim="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mNextAnim I
invokevirtual java/io/PrintWriter/println(I)V
L7:
aload 0
getfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
ifnull L8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mContainer="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L8:
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L9
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mView="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L9:
aload 0
getfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
ifnull L10
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mInnerView="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L10:
aload 0
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
ifnull L11
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mAnimatingAway="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mStateAfterAnimating="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/Fragment/mStateAfterAnimating I
invokevirtual java/io/PrintWriter/println(I)V
L11:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L12
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Loader Manager:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/LoaderManagerImpl/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L12:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L13
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Child "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/FragmentManagerImpl/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L13:
return
.limit locals 5
.limit stack 5
.end method

.method public final equals(Ljava/lang/Object;)Z
aload 0
aload 1
invokespecial java/lang/Object/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 1
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
areturn
L0:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L1
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
areturn
L1:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getArguments()Landroid/os/Bundle;
aload 0
getfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnonnull L0
aload 0
invokevirtual android/support/v4/app/Fragment/instantiateChildFragmentManager()V
aload 0
getfield android/support/v4/app/Fragment/mState I
iconst_5
if_icmplt L1
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchResume()V
L0:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
areturn
L1:
aload 0
getfield android/support/v4/app/Fragment/mState I
iconst_4
if_icmplt L2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchStart()V
goto L0
L2:
aload 0
getfield android/support/v4/app/Fragment/mState I
iconst_2
if_icmplt L3
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchActivityCreated()V
goto L0
L3:
aload 0
getfield android/support/v4/app/Fragment/mState I
iconst_1
if_icmplt L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchCreate()V
goto L0
.limit locals 1
.limit stack 2
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getId()I
aload 0
getfield android/support/v4/app/Fragment/mFragmentId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getLayoutInflater()Landroid/view/LayoutInflater;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
areturn
L0:
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L1
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " not attached to Activity"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
aload 0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
iconst_1
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
areturn
.limit locals 1
.limit stack 5
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getResources()Landroid/content/res/Resources;
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " not attached to Activity"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
areturn
.limit locals 1
.limit stack 4
.end method

.method public final getRetainInstance()Z
aload 0
getfield android/support/v4/app/Fragment/mRetainInstance Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getString(I)Ljava/lang/String;
aload 0
invokevirtual android/support/v4/app/Fragment/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final transient getString(I[Ljava/lang/Object;)Ljava/lang/String;
aload 0
invokevirtual android/support/v4/app/Fragment/getResources()Landroid/content/res/Resources;
iload 1
aload 2
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getTag()Ljava/lang/String;
aload 0
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTargetRequestCode()I
aload 0
getfield android/support/v4/app/Fragment/mTargetRequestCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getText(I)Ljava/lang/CharSequence;
aload 0
invokevirtual android/support/v4/app/Fragment/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getText(I)Ljava/lang/CharSequence;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getUserVisibleHint()Z
aload 0
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getView()Landroid/view/View;
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final hashCode()I
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method initState()V
aload 0
iconst_m1
putfield android/support/v4/app/Fragment/mIndex I
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mAdded Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mRemoving Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mResumed Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mFromLayout Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mInLayout Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mRestored Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mBackStackNesting I
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mFragmentId I
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mContainerId I
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mHidden Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mDetached Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mRetaining Z
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mLoadersStarted Z
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
return
.limit locals 1
.limit stack 2
.end method

.method instantiateChildFragmentManager()V
aload 0
new android/support/v4/app/FragmentManagerImpl
dup
invokespecial android/support/v4/app/FragmentManagerImpl/<init>()V
putfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
new android/support/v4/app/Fragment$1
dup
aload 0
invokespecial android/support/v4/app/Fragment$1/<init>(Landroid/support/v4/app/Fragment;)V
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
return
.limit locals 1
.limit stack 5
.end method

.method public final isAdded()Z
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mAdded Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isDetached()Z
aload 0
getfield android/support/v4/app/Fragment/mDetached Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isHidden()Z
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method final isInBackStack()Z
aload 0
getfield android/support/v4/app/Fragment/mBackStackNesting I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isInLayout()Z
aload 0
getfield android/support/v4/app/Fragment/mInLayout Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isRemoving()Z
aload 0
getfield android/support/v4/app/Fragment/mRemoving Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isResumed()Z
aload 0
getfield android/support/v4/app/Fragment/mResumed Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isVisible()Z
aload 0
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifeq L0
aload 0
invokevirtual android/support/v4/app/Fragment/isHidden()Z
ifne L0
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 2
.limit stack 2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 0
.end method

.method public onAttach(Landroid/app/Activity;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 2
.limit stack 2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 2
.limit stack 2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
aload 0
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 2
aload 3
invokevirtual android/support/v4/app/FragmentActivity/onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public onDestroy()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
getfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
ifne L0
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
aload 0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
L0:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L1
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doDestroy()V
L1:
return
.limit locals 1
.limit stack 5
.end method

.method public onDestroyOptionsMenu()V
return
.limit locals 1
.limit stack 0
.end method

.method public onDestroyView()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onDetach()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onHiddenChanged(Z)V
return
.limit locals 2
.limit stack 0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 4
.limit stack 2
.end method

.method public onLowMemory()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPause()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onResume()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onStart()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
ifne L0
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mLoadersStarted Z
aload 0
getfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
ifne L1
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
aload 0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
L1:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doStart()V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public onStop()V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 1
.limit stack 2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCalled Z
return
.limit locals 2
.limit stack 2
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onActivityCreated()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchActivityCreated()V
L2:
return
.limit locals 2
.limit stack 4
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ifne L0
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onContextItemSelected(Landroid/view/MenuItem;)Z
ifeq L1
L2:
iconst_1
ireturn
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchContextItemSelected(Landroid/view/MenuItem;)Z
ifne L2
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method performCreate(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onCreate()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
ifnull L2
aload 1
ldc "android:support:fragments"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
astore 1
aload 1
ifnull L2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnonnull L3
aload 0
invokevirtual android/support/v4/app/Fragment/instantiateChildFragmentManager()V
L3:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
aconst_null
invokevirtual android/support/v4/app/FragmentManagerImpl/restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchCreate()V
L2:
return
.limit locals 2
.limit stack 4
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
iconst_0
istore 4
iconst_0
istore 5
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ifne L0
iload 5
istore 3
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L1
iload 5
istore 3
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L1
iconst_1
istore 3
aload 0
aload 1
aload 2
invokevirtual android/support/v4/app/Fragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
L1:
iload 3
istore 4
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
iload 3
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
ior
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
L0:
aload 0
aload 1
aload 2
aload 3
invokevirtual android/support/v4/app/Fragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method performDestroy()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchDestroy()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onDestroy()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onDestroy()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 1
.limit stack 4
.end method

.method performDestroyView()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchDestroyView()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onDestroyView()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onDestroyView()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L2
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doReportNextStart()V
L2:
return
.limit locals 1
.limit stack 4
.end method

.method performLowMemory()V
aload 0
invokevirtual android/support/v4/app/Fragment/onLowMemory()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchLowMemory()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ifne L0
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L1
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L1
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ifeq L1
L2:
iconst_1
ireturn
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
ifne L2
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ifne L0
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L1
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L1
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onOptionsMenuClosed(Landroid/view/Menu;)V
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchOptionsMenuClosed(Landroid/view/Menu;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method performPause()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchPause()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onPause()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onPause()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 1
.limit stack 4
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
iconst_0
istore 3
iconst_0
istore 4
aload 0
getfield android/support/v4/app/Fragment/mHidden Z
ifne L0
iload 4
istore 2
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L1
iload 4
istore 2
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L1
iconst_1
istore 2
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onPrepareOptionsMenu(Landroid/view/Menu;)V
L1:
iload 2
istore 3
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
iload 2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
ior
istore 3
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method performReallyStop()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchReallyStop()V
L0:
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
ifeq L1
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mLoadersStarted Z
aload 0
getfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
ifne L2
aload 0
iconst_1
putfield android/support/v4/app/Fragment/mCheckedForLoaderManager Z
aload 0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
aload 0
getfield android/support/v4/app/Fragment/mLoadersStarted Z
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
L2:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L1
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mRetaining Z
ifne L3
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doStop()V
L1:
return
L3:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doRetain()V
return
.limit locals 1
.limit stack 5
.end method

.method performResume()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onResume()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onResume()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchResume()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
L2:
return
.limit locals 1
.limit stack 4
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/saveAllState()Landroid/os/Parcelable;
astore 2
aload 2
ifnull L0
aload 1
ldc "android:support:fragments"
aload 2
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method performStart()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onStart()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onStart()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L2
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchStart()V
L2:
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L3
aload 0
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doReportStart()V
L3:
return
.limit locals 1
.limit stack 4
.end method

.method performStop()V
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchStop()V
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
invokevirtual android/support/v4/app/Fragment/onStop()V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onStop()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 1
.limit stack 4
.end method

.method public registerForContextMenu(Landroid/view/View;)V
aload 1
aload 0
invokevirtual android/view/View/setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
aload 0
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
invokevirtual android/view/View/restoreHierarchyState(Landroid/util/SparseArray;)V
aload 0
aconst_null
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
L0:
aload 0
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/onViewStateRestored(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mCalled Z
ifne L1
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onViewStateRestored()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 2
.limit stack 4
.end method

.method public setArguments(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/Fragment/mIndex I
iflt L0
new java/lang/IllegalStateException
dup
ldc "Fragment already active"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
return
.limit locals 2
.limit stack 3
.end method

.method public setHasOptionsMenu(Z)V
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
iload 1
if_icmpeq L0
aload 0
iload 1
putfield android/support/v4/app/Fragment/mHasMenu Z
aload 0
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifeq L0
aload 0
invokevirtual android/support/v4/app/Fragment/isHidden()Z
ifne L0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/supportInvalidateOptionsMenu()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
aload 0
iload 1
putfield android/support/v4/app/Fragment/mIndex I
aload 2
ifnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
return
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "android:fragment:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
aload 0
getfield android/support/v4/app/Fragment/mIndex I
iflt L0
new java/lang/IllegalStateException
dup
ldc "Fragment already active"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
ifnull L1
aload 1
getfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
ifnull L1
aload 1
getfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
astore 1
L2:
aload 0
aload 1
putfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
return
L1:
aconst_null
astore 1
goto L2
.limit locals 2
.limit stack 3
.end method

.method public setMenuVisibility(Z)V
aload 0
getfield android/support/v4/app/Fragment/mMenuVisible Z
iload 1
if_icmpeq L0
aload 0
iload 1
putfield android/support/v4/app/Fragment/mMenuVisible Z
aload 0
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L0
aload 0
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifeq L0
aload 0
invokevirtual android/support/v4/app/Fragment/isHidden()Z
ifne L0
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/supportInvalidateOptionsMenu()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setRetainInstance(Z)V
iload 1
ifeq L0
aload 0
getfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "Can't retain fragements that are nested in other fragments"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield android/support/v4/app/Fragment/mRetainInstance Z
return
.limit locals 2
.limit stack 3
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
aload 0
aload 1
putfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
aload 0
iload 2
putfield android/support/v4/app/Fragment/mTargetRequestCode I
return
.limit locals 3
.limit stack 2
.end method

.method public setUserVisibleHint(Z)V
aload 0
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
ifne L0
iload 1
ifeq L0
aload 0
getfield android/support/v4/app/Fragment/mState I
iconst_4
if_icmpge L0
aload 0
getfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
L0:
aload 0
iload 1
putfield android/support/v4/app/Fragment/mUserVisibleHint Z
iload 1
ifne L1
iconst_1
istore 1
L2:
aload 0
iload 1
putfield android/support/v4/app/Fragment/mDeferStart Z
return
L1:
iconst_0
istore 1
goto L2
.limit locals 2
.limit stack 2
.end method

.method public startActivity(Landroid/content/Intent;)V
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " not attached to Activity"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
aload 1
iconst_m1
invokevirtual android/support/v4/app/FragmentActivity/startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " not attached to Activity"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
aload 1
iload 2
invokevirtual android/support/v4/app/FragmentActivity/startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 0
aload 1
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
aload 0
getfield android/support/v4/app/Fragment/mIndex I
iflt L0
aload 1
ldc " #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
aload 0
getfield android/support/v4/app/Fragment/mFragmentId I
ifeq L1
aload 1
ldc " id=0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/Fragment/mFragmentId I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
ifnull L2
aload 1
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 1
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
aload 1
aconst_null
invokevirtual android/view/View/setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
return
.limit locals 2
.limit stack 2
.end method
