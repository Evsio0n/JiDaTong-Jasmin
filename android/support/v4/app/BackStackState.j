.bytecode 50.0
.class final synchronized android/support/v4/app/BackStackState
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner android/support/v4/app/BackStackState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v4/app/BackStackState;>;"

.field final 'mBreadCrumbShortTitleRes' I

.field final 'mBreadCrumbShortTitleText' Ljava/lang/CharSequence;

.field final 'mBreadCrumbTitleRes' I

.field final 'mBreadCrumbTitleText' Ljava/lang/CharSequence;

.field final 'mIndex' I

.field final 'mName' Ljava/lang/String;

.field final 'mOps' [I

.field final 'mTransition' I

.field final 'mTransitionStyle' I

.method static <clinit>()V
new android/support/v4/app/BackStackState$1
dup
invokespecial android/support/v4/app/BackStackState$1/<init>()V
putstatic android/support/v4/app/BackStackState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/createIntArray()[I
putfield android/support/v4/app/BackStackState/mOps [I
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/BackStackState/mTransition I
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/BackStackState/mTransitionStyle I
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield android/support/v4/app/BackStackState/mName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/BackStackState/mIndex I
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/BackStackState/mBreadCrumbTitleRes I
aload 0
getstatic android/text/TextUtils/CHAR_SEQUENCE_CREATOR Landroid/os/Parcelable$Creator;
aload 1
invokeinterface android/os/Parcelable$Creator/createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
putfield android/support/v4/app/BackStackState/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleRes I
aload 0
getstatic android/text/TextUtils/CHAR_SEQUENCE_CREATOR Landroid/os/Parcelable$Creator;
aload 1
invokeinterface android/os/Parcelable$Creator/createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
putfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
aload 0
invokespecial java/lang/Object/<init>()V
iconst_0
istore 3
aload 2
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
astore 1
L0:
aload 1
ifnull L1
iload 3
istore 4
aload 1
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnull L2
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iadd
istore 4
L2:
aload 1
getfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
astore 1
iload 4
istore 3
goto L0
L1:
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mNumOp I
bipush 7
imul
iload 3
iadd
newarray int
putfield android/support/v4/app/BackStackState/mOps [I
aload 2
getfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
ifne L3
new java/lang/IllegalStateException
dup
ldc "Not on back stack"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
getfield android/support/v4/app/BackStackRecord/mHead Landroid/support/v4/app/BackStackRecord$Op;
astore 1
iconst_0
istore 3
L4:
aload 1
ifnull L5
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 3
iconst_1
iadd
istore 4
aload 7
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord$Op/cmd I
iastore
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 4
iconst_1
iadd
istore 5
aload 1
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
ifnull L6
aload 1
getfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mIndex I
istore 3
L7:
aload 7
iload 4
iload 3
iastore
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 5
iconst_1
iadd
istore 3
aload 7
iload 5
aload 1
getfield android/support/v4/app/BackStackRecord$Op/enterAnim I
iastore
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 3
iconst_1
iadd
istore 4
aload 7
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord$Op/exitAnim I
iastore
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 4
iconst_1
iadd
istore 3
aload 7
iload 4
aload 1
getfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
iastore
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 3
iconst_1
iadd
istore 6
aload 7
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
iastore
aload 1
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
ifnull L8
aload 1
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 5
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
iload 6
iload 5
iastore
iconst_0
istore 4
iload 6
iconst_1
iadd
istore 3
L9:
iload 4
iload 5
if_icmpge L10
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
getfield android/support/v4/app/Fragment/mIndex I
iastore
iload 4
iconst_1
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L9
L6:
iconst_m1
istore 3
goto L7
L10:
aload 1
getfield android/support/v4/app/BackStackRecord$Op/next Landroid/support/v4/app/BackStackRecord$Op;
astore 1
goto L4
L8:
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 7
iload 6
iconst_1
iadd
istore 3
aload 7
iload 6
iconst_0
iastore
goto L10
L5:
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mTransition I
putfield android/support/v4/app/BackStackState/mTransition I
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mTransitionStyle I
putfield android/support/v4/app/BackStackState/mTransitionStyle I
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
putfield android/support/v4/app/BackStackState/mName Ljava/lang/String;
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mIndex I
putfield android/support/v4/app/BackStackState/mIndex I
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
putfield android/support/v4/app/BackStackState/mBreadCrumbTitleRes I
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
putfield android/support/v4/app/BackStackState/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
putfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleRes I
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
putfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
return
.limit locals 8
.limit stack 4
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
new android/support/v4/app/BackStackRecord
dup
aload 1
invokespecial android/support/v4/app/BackStackRecord/<init>(Landroid/support/v4/app/FragmentManagerImpl;)V
astore 7
iconst_0
istore 2
iconst_0
istore 4
L0:
iload 2
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
arraylength
if_icmpge L1
new android/support/v4/app/BackStackRecord$Op
dup
invokespecial android/support/v4/app/BackStackRecord$Op/<init>()V
astore 8
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 2
iconst_1
iadd
istore 3
aload 8
aload 9
iload 2
iaload
putfield android/support/v4/app/BackStackRecord$Op/cmd I
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L2
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Instantiate "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " op #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " base fragment #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
iload 3
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 3
iconst_1
iadd
istore 2
aload 9
iload 3
iaload
istore 3
iload 3
iflt L3
aload 8
aload 1
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
L4:
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 2
iconst_1
iadd
istore 3
aload 8
aload 9
iload 2
iaload
putfield android/support/v4/app/BackStackRecord$Op/enterAnim I
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 3
iconst_1
iadd
istore 2
aload 8
aload 9
iload 3
iaload
putfield android/support/v4/app/BackStackRecord$Op/exitAnim I
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 2
iconst_1
iadd
istore 3
aload 8
aload 9
iload 2
iaload
putfield android/support/v4/app/BackStackRecord$Op/popEnterAnim I
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 3
iconst_1
iadd
istore 5
aload 8
aload 9
iload 3
iaload
putfield android/support/v4/app/BackStackRecord$Op/popExitAnim I
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
astore 9
iload 5
iconst_1
iadd
istore 2
aload 9
iload 5
iaload
istore 6
iload 2
istore 3
iload 6
ifle L5
aload 8
new java/util/ArrayList
dup
iload 6
invokespecial java/util/ArrayList/<init>(I)V
putfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
iconst_0
istore 5
L6:
iload 2
istore 3
iload 5
iload 6
if_icmpge L5
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L7
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Instantiate "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " set remove fragment #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
iload 2
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 1
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
iload 2
iaload
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 9
aload 8
getfield android/support/v4/app/BackStackRecord$Op/removed Ljava/util/ArrayList;
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
iconst_1
iadd
istore 5
iload 2
iconst_1
iadd
istore 2
goto L6
L3:
aload 8
aconst_null
putfield android/support/v4/app/BackStackRecord$Op/fragment Landroid/support/v4/app/Fragment;
goto L4
L5:
iload 3
istore 2
aload 7
aload 8
invokevirtual android/support/v4/app/BackStackRecord/addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mTransition I
putfield android/support/v4/app/BackStackRecord/mTransition I
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mTransitionStyle I
putfield android/support/v4/app/BackStackRecord/mTransitionStyle I
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mName Ljava/lang/String;
putfield android/support/v4/app/BackStackRecord/mName Ljava/lang/String;
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mIndex I
putfield android/support/v4/app/BackStackRecord/mIndex I
aload 7
iconst_1
putfield android/support/v4/app/BackStackRecord/mAddToBackStack Z
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbTitleRes I
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleRes I
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbTitleText Ljava/lang/CharSequence;
putfield android/support/v4/app/BackStackRecord/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleRes I
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleRes I
aload 7
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
putfield android/support/v4/app/BackStackRecord/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
aload 7
iconst_1
invokevirtual android/support/v4/app/BackStackRecord/bumpBackStackNesting(I)V
aload 7
areturn
.limit locals 10
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mOps [I
invokevirtual android/os/Parcel/writeIntArray([I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mTransition I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mTransitionStyle I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mIndex I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbTitleRes I
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbTitleText Ljava/lang/CharSequence;
aload 1
iconst_0
invokestatic android/text/TextUtils/writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
aload 1
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleRes I
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield android/support/v4/app/BackStackState/mBreadCrumbShortTitleText Ljava/lang/CharSequence;
aload 1
iconst_0
invokestatic android/text/TextUtils/writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
return
.limit locals 3
.limit stack 3
.end method
