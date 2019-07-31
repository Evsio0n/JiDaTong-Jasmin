.bytecode 50.0
.class final synchronized android/support/v4/app/BackStackRecord
.super android/support/v4/app/FragmentTransaction
.implements android/support/v4/app/FragmentManager$BackStackEntry
.implements java/lang/Runnable
.inner class static final Op inner android/support/v4/app/BackStackRecord$Op outer android/support/v4/app/BackStackRecord

.field static final 'OP_ADD' I = 1


.field static final 'OP_ATTACH' I = 7


.field static final 'OP_DETACH' I = 6


.field static final 'OP_HIDE' I = 4


.field static final 'OP_NULL' I = 0


.field static final 'OP_REMOVE' I = 3


.field static final 'OP_REPLACE' I = 2


.field static final 'OP_SHOW' I = 5


.field static final 'TAG' Ljava/lang/String; = "FragmentManager"

.field 'mAddToBackStack' Z

.field 'mAllowAddToBackStack' Z

.field 'mBreadCrumbShortTitleRes' I

.field 'mBreadCrumbShortTitleText' Ljava/lang/CharSequence;

.field 'mBreadCrumbTitleRes' I

.field 'mBreadCrumbTitleText' Ljava/lang/CharSequence;

.field 'mCommitted' Z

.field 'mEnterAnim' I

.field 'mExitAnim' I

.field 'mHead' Landroid/support/v4/app/BackStackRecord$Op;

.field 'mIndex' I

.field final 'mManager' Landroid/support/v4/app/FragmentManagerImpl;

.field 'mName' Ljava/lang/String;

.field 'mNumOp' I

.field 'mPopEnterAnim' I

.field 'mPopExitAnim' I

.field 'mTail' Landroid/support/v4/app/BackStackRecord$Op;

.field 'mTransition' I

.field 'mTransitionStyle' I

.method public <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
aload 0
invokespecial android/support/v4/app/FragmentTransaction/<init>()V
aload 0
iconst_1
putfield android/support/v4/app/BackStackRecord/mAllowAddToBackStack Z
aload 0
iconst_m1
putfield android/support/v4/app/BackStackRecord/mIndex I
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
return
.limit locals 2
.limit stack 2
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 3
ifnull L0
aload 2
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
ifnull L1
aload 3
aload 2
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Can't change tag of fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " now "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
aload 3
putfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
L0:
iload 1
ifeq L2
aload 2
getfield android/support/v4/app/Fragment/mFragmentId I
ifeq L3
aload 2
getfield android/support/v4/app/Fragment/mFragmentId I
iload 1
if_icmpeq L3
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Can't change container ID of fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield android/support/v4/app/Fragment/mFragmentId I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " now "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
iload 1
putfield android/support/v4/app/Fragment/mFragmentId I
aload 2
iload 1
putfield android/support/v4/app/Fragment/mContainerId I
L2:
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 3
aload 3
iload 4
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 3
aload 2
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 3
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return
.limit locals 5
.limit stack 4
.end method

.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
aload 2
aconst_null
iconst_1
invokespecial android/support/v4/app/BackStackRecord/doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
aload 2
aload 3
iconst_1
invokespecial android/support/v4/app/BackStackRecord/doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
aload 0
areturn
.limit locals 4
.limit stack 5
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iconst_0
aload 1
aload 2
iconst_1
invokespecial android/support/v4/app/BackStackRecord/doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
ifnonnull L0
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mTail Landroid/support/v4/app/BackStackRecord$Op;
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
L1:
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mEnterAnim I
putfield android/support/v4/app/BackStackRecord$Op/enterAnim I
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mExitAnim I
putfield android/support/v4/app/BackStackRecord$Op/exitAnim I
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mPopEnterAnim I
putfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mPopExitAnim I
putfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
aload 0
aload 0
getfield android/support/v4/app/BackStackRecord/mNumOp I
iconst_1
iadd
putfield android/support/v4/app/BackStackRecord/mNumOp I
return
L0:
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mTail Landroid/support/v4/app/BackStackRecord$Op;
putfield android/support/v4/app/BackStackRecord$Op/prev Landroid/support/v4/app/BackStackRecord$Op;
aload 0
getfield android/support/v4/app/BackStackRecord/mTail Landroid/support/v4/app/BackStackRecord$Op;
aload 1
putfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mTail Landroid/support/v4/app/BackStackRecord$Op;
goto L1
.limit locals 2
.limit stack 3
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield android/support/v4/app/BackStackRecord/mAllowAddToBackStack Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "This FragmentTransaction is not allowed to be added to the back stack."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iconst_1
putfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 2
aload 2
bipush 7
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 2
aload 1
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 2
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method bumpBackStackNesting(I)V
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifne L0
L1:
return
L0:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L2
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bump nesting in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 0
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
astore 3
L3:
aload 3
ifnull L1
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
ifnull L4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 4
getfield android/support/v4/app/Fragment/mBackStackNesting I
iload 1
iadd
putfield android/support/v4/app/Fragment/mBackStackNesting I
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L4
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bump nesting of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mBackStackNesting I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnull L5
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L6:
iload 2
iflt L5
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
aload 4
getfield android/support/v4/app/Fragment/mBackStackNesting I
iload 1
iadd
putfield android/support/v4/app/Fragment/mBackStackNesting I
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L7
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bump nesting of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield android/support/v4/app/Fragment/mBackStackNesting I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
iload 2
iconst_1
isub
istore 2
goto L6
L5:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
astore 3
goto L3
.limit locals 5
.limit stack 3
.end method

.method public commit()I
aload 0
iconst_0
invokevirtual android/support/v4/app/BackStackRecord/commitInternal(Z)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public commitAllowingStateLoss()I
aload 0
iconst_1
invokevirtual android/support/v4/app/BackStackRecord/commitInternal(Z)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method commitInternal(Z)I
aload 0
getfield android/support/v4/app/BackStackRecord/mCommitted Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "commit already called"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L1
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Commit: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
ldc "  "
aconst_null
new java/io/PrintWriter
dup
new android/support/v4/util/LogWriter
dup
ldc "FragmentManager"
invokespecial android/support/v4/util/LogWriter/<init>(Ljava/lang/String;)V
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
aconst_null
invokevirtual android/support/v4/app/BackStackRecord/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L1:
aload 0
iconst_1
putfield android/support/v4/app/BackStackRecord/mCommitted Z
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifeq L2
aload 0
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
putfield android/support/v4/app/BackStackRecord/mIndex I
L3:
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
iload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/enqueueAction(Ljava/lang/Runnable;Z)V
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
ireturn
L2:
aload 0
iconst_m1
putfield android/support/v4/app/BackStackRecord/mIndex I
goto L3
.limit locals 2
.limit stack 8
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 2
aload 2
bipush 6
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 2
aload 1
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 2
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "This transaction is already being added to the back stack"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iconst_0
putfield android/support/v4/app/BackStackRecord/mAllowAddToBackStack Z
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
aload 1
aload 3
iconst_1
invokevirtual android/support/v4/app/BackStackRecord/dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
return
.limit locals 5
.limit stack 4
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
iload 3
ifeq L0
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mName="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mIndex="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
invokevirtual java/io/PrintWriter/print(I)V
aload 2
ldc " mCommitted="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mCommitted Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
ifeq L1
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mTransition=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mTransitionStyle=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L1:
aload 0
getfield android/support/v4/app/BackStackRecord/mEnterAnim I
ifne L2
aload 0
getfield android/support/v4/app/BackStackRecord/mExitAnim I
ifeq L3
L2:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mEnterAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mEnterAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mExitAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mExitAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L3:
aload 0
getfield android/support/v4/app/BackStackRecord/mPopEnterAnim I
ifne L4
aload 0
getfield android/support/v4/app/BackStackRecord/mPopExitAnim I
ifeq L5
L4:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mPopEnterAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mPopEnterAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mPopExitAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mPopExitAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L5:
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
ifne L6
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
ifnull L7
L6:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mBreadCrumbTitleRes=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mBreadCrumbTitleText="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L7:
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
ifne L8
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
ifnull L0
L8:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "mBreadCrumbShortTitleRes=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " mBreadCrumbShortTitleText="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L0:
aload 0
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
ifnull L9
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "Operations:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "    "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
aload 0
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
astore 7
iconst_0
istore 4
L10:
aload 7
ifnull L9
aload 7
getfield android/support/v4/app/BackStackRecord$Op/cmd I
tableswitch 0
L11
L12
L13
L14
L15
L16
L17
L18
default : L19
L19:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "cmd="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
getfield android/support/v4/app/BackStackRecord$Op/cmd I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
L20:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "  Op #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
iload 4
invokevirtual java/io/PrintWriter/print(I)V
aload 2
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 6
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
iload 3
ifeq L21
aload 7
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
ifne L22
aload 7
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
ifeq L23
L22:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "enterAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " exitAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L23:
aload 7
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
ifne L24
aload 7
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
ifeq L21
L24:
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "popEnterAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc " popExitAnim=#"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L21:
aload 7
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnull L25
aload 7
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L25
iconst_0
istore 5
L26:
iload 5
aload 7
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L25
aload 2
aload 8
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 7
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L27
aload 2
ldc "Removed: "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
L28:
aload 2
aload 7
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
iload 5
iconst_1
iadd
istore 5
goto L26
L11:
ldc "NULL"
astore 6
goto L20
L12:
ldc "ADD"
astore 6
goto L20
L13:
ldc "REPLACE"
astore 6
goto L20
L14:
ldc "REMOVE"
astore 6
goto L20
L15:
ldc "HIDE"
astore 6
goto L20
L16:
ldc "SHOW"
astore 6
goto L20
L17:
ldc "DETACH"
astore 6
goto L20
L18:
ldc "ATTACH"
astore 6
goto L20
L27:
iload 5
ifne L29
aload 2
ldc "Removed:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L29:
aload 2
aload 8
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 2
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 2
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
goto L28
L25:
aload 7
getfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
astore 7
iload 4
iconst_1
iadd
istore 4
goto L10
L9:
return
.limit locals 9
.limit stack 3
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
ifeq L0
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
invokevirtual android/support/v4/app/FragmentActivity/getText(I)Ljava/lang/CharSequence;
areturn
L0:
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getBreadCrumbShortTitleRes()I
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
ifeq L0
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
invokevirtual android/support/v4/app/FragmentActivity/getText(I)Ljava/lang/CharSequence;
areturn
L0:
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getBreadCrumbTitleRes()I
aload 0
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTransition()I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTransitionStyle()I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 2
aload 2
iconst_4
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 2
aload 1
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 2
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public isAddToBackStackAllowed()Z
aload 0
getfield android/support/v4/app/BackStackRecord/mAllowAddToBackStack Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEmpty()Z
aload 0
getfield android/support/v4/app/BackStackRecord/mNumOp I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public popFromBackStack(Z)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "popFromBackStack: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
ldc "  "
aconst_null
new java/io/PrintWriter
dup
new android/support/v4/util/LogWriter
dup
ldc "FragmentManager"
invokespecial android/support/v4/util/LogWriter/<init>(Ljava/lang/String;)V
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
aconst_null
invokevirtual android/support/v4/app/BackStackRecord/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L0:
aload 0
iconst_m1
invokevirtual android/support/v4/app/BackStackRecord/bumpBackStackNesting(I)V
aload 0
getfield android/support/v4/app/BackStackRecord/mTail Landroid/support/v4/app/BackStackRecord$Op;
astore 3
L1:
aload 3
ifnull L2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/cmd I
tableswitch 1
L3
L4
L5
L6
L7
L8
L9
default : L10
L10:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown cmd: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/support/v4/app/BackStackRecord$Op/cmd I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/removeFragment(Landroid/support/v4/app/Fragment;II)V
L11:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/prev Landroid/support/v4/app/BackStackRecord$Op;
astore 3
goto L1
L4:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
ifnull L12
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/removeFragment(Landroid/support/v4/app/Fragment;II)V
L12:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnull L11
iconst_0
istore 2
L13:
iload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L11
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/addFragment(Landroid/support/v4/app/Fragment;Z)V
iload 2
iconst_1
iadd
istore 2
goto L13
L5:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/addFragment(Landroid/support/v4/app/Fragment;Z)V
goto L11
L6:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/showFragment(Landroid/support/v4/app/Fragment;II)V
goto L11
L7:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/hideFragment(Landroid/support/v4/app/Fragment;II)V
goto L11
L8:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/attachFragment(Landroid/support/v4/app/Fragment;II)V
goto L11
L9:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 4
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/detachFragment(Landroid/support/v4/app/Fragment;II)V
goto L11
L2:
iload 1
ifeq L14
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
invokestatic android/support/v4/app/FragmentManagerImpl/reverseTransit(I)I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
iconst_1
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IIIZ)V
L14:
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
iflt L15
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
invokevirtual android/support/v4/app/FragmentManagerImpl/freeBackStackIndex(I)V
aload 0
iconst_m1
putfield android/support/v4/app/BackStackRecord/mIndex I
L15:
return
.limit locals 5
.limit stack 8
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 2
aload 2
iconst_3
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 2
aload 1
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 2
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
aload 2
aconst_null
invokevirtual android/support/v4/app/BackStackRecord/replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
areturn
.limit locals 3
.limit stack 4
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
iload 1
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "Must use non-zero containerViewId"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
aload 2
aload 3
iconst_2
invokespecial android/support/v4/app/BackStackRecord/doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
aload 0
areturn
.limit locals 4
.limit stack 5
.end method

.method public run()V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Run: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifeq L1
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
ifge L1
new java/lang/IllegalStateException
dup
ldc "addToBackStack() called after commit()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_1
invokevirtual android/support/v4/app/BackStackRecord/bumpBackStackNesting(I)V
aload 0
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
astore 3
L2:
aload 3
ifnull L3
aload 3
getfield android/support/v4/app/BackStackRecord$Op/cmd I
tableswitch 1
L4
L5
L6
L7
L8
L9
L10
default : L11
L11:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown cmd: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield android/support/v4/app/BackStackRecord$Op/cmd I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/addFragment(Landroid/support/v4/app/Fragment;Z)V
L12:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
astore 3
goto L2
L5:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
astore 4
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L13
iconst_0
istore 1
L14:
aload 2
astore 4
iload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L13
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L15
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OP_REPLACE: adding="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " old="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
aload 2
ifnull L16
aload 2
astore 4
aload 5
getfield android/support/v4/app/Fragment/mContainerId I
aload 2
getfield android/support/v4/app/Fragment/mContainerId I
if_icmpne L17
L16:
aload 5
aload 2
if_acmpne L18
aconst_null
astore 4
aload 3
aconst_null
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
L17:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 2
goto L14
L18:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnonnull L19
aload 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
L19:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 5
aload 3
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifeq L20
aload 5
aload 5
getfield android/support/v4/app/Fragment/mBackStackNesting I
iconst_1
iadd
putfield android/support/v4/app/Fragment/mBackStackNesting I
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L20
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bump nesting of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield android/support/v4/app/Fragment/mBackStackNesting I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L20:
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 5
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/removeFragment(Landroid/support/v4/app/Fragment;II)V
aload 2
astore 4
goto L17
L13:
aload 4
ifnull L12
aload 4
aload 3
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 4
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/addFragment(Landroid/support/v4/app/Fragment;Z)V
goto L12
L6:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/removeFragment(Landroid/support/v4/app/Fragment;II)V
goto L12
L7:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/hideFragment(Landroid/support/v4/app/Fragment;II)V
goto L12
L8:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/showFragment(Landroid/support/v4/app/Fragment;II)V
goto L12
L9:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/detachFragment(Landroid/support/v4/app/Fragment;II)V
goto L12
L10:
aload 3
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
astore 2
aload 2
aload 3
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
putfield android/support/v4/app/Fragment/mNextAnim I
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
invokevirtual android/support/v4/app/FragmentManagerImpl/attachFragment(Landroid/support/v4/app/Fragment;II)V
goto L12
L3:
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
iconst_1
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IIIZ)V
aload 0
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifeq L21
aload 0
getfield android/support/v4/app/BackStackRecord/mManager Landroid/support/v4/app/FragmentManagerImpl;
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
L21:
return
.limit locals 6
.limit stack 5
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
aload 0
aconst_null
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iconst_0
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
aload 0
aconst_null
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
aload 0
iconst_0
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
aload 0
aload 1
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
iload 2
iconst_0
iconst_0
invokevirtual android/support/v4/app/BackStackRecord/setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
areturn
.limit locals 3
.limit stack 5
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
putfield android/support/v4/app/BackStackRecord/mEnterAnim I
aload 0
iload 2
putfield android/support/v4/app/BackStackRecord/mExitAnim I
aload 0
iload 3
putfield android/support/v4/app/BackStackRecord/mPopEnterAnim I
aload 0
iload 4
putfield android/support/v4/app/BackStackRecord/mPopExitAnim I
aload 0
areturn
.limit locals 5
.limit stack 2
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
putfield android/support/v4/app/BackStackRecord/mTransition I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
aload 0
iload 1
putfield android/support/v4/app/BackStackRecord/mTransitionStyle I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 2
aload 2
iconst_5
putfield android/support/v4/app/BackStackRecord$Op/cmd I
aload 2
aload 1
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
aload 0
aload 2
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 1
ldc "BackStackEntry{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
iflt L0
aload 1
ldc " #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
aload 0
getfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
ifnull L1
aload 1
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 1
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
