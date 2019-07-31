.bytecode 50.0
.class final synchronized android/support/v4/app/FragmentState
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner android/support/v4/app/FragmentState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v4/app/FragmentState;>;"

.field final 'mArguments' Landroid/os/Bundle;

.field final 'mClassName' Ljava/lang/String;

.field final 'mContainerId' I

.field final 'mDetached' Z

.field final 'mFragmentId' I

.field final 'mFromLayout' Z

.field final 'mIndex' I

.field 'mInstance' Landroid/support/v4/app/Fragment;

.field final 'mRetainInstance' Z

.field 'mSavedFragmentState' Landroid/os/Bundle;

.field final 'mTag' Ljava/lang/String;

.method static <clinit>()V
new android/support/v4/app/FragmentState$1
dup
invokespecial android/support/v4/app/FragmentState$1/<init>()V
putstatic android/support/v4/app/FragmentState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/os/Parcel;)V
iconst_1
istore 3
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield android/support/v4/app/FragmentState/mClassName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/FragmentState/mIndex I
aload 1
invokevirtual android/os/Parcel/readInt()I
ifeq L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield android/support/v4/app/FragmentState/mFromLayout Z
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/FragmentState/mFragmentId I
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/app/FragmentState/mContainerId I
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield android/support/v4/app/FragmentState/mTag Ljava/lang/String;
aload 1
invokevirtual android/os/Parcel/readInt()I
ifeq L2
iconst_1
istore 2
L3:
aload 0
iload 2
putfield android/support/v4/app/FragmentState/mRetainInstance Z
aload 1
invokevirtual android/os/Parcel/readInt()I
ifeq L4
iload 3
istore 2
L5:
aload 0
iload 2
putfield android/support/v4/app/FragmentState/mDetached Z
aload 0
aload 1
invokevirtual android/os/Parcel/readBundle()Landroid/os/Bundle;
putfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
aload 0
aload 1
invokevirtual android/os/Parcel/readBundle()Landroid/os/Bundle;
putfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
return
L0:
iconst_0
istore 2
goto L1
L2:
iconst_0
istore 2
goto L3
L4:
iconst_0
istore 2
goto L5
.limit locals 4
.limit stack 2
.end method

.method public <init>(Landroid/support/v4/app/Fragment;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putfield android/support/v4/app/FragmentState/mClassName Ljava/lang/String;
aload 0
aload 1
getfield android/support/v4/app/Fragment/mIndex I
putfield android/support/v4/app/FragmentState/mIndex I
aload 0
aload 1
getfield android/support/v4/app/Fragment/mFromLayout Z
putfield android/support/v4/app/FragmentState/mFromLayout Z
aload 0
aload 1
getfield android/support/v4/app/Fragment/mFragmentId I
putfield android/support/v4/app/FragmentState/mFragmentId I
aload 0
aload 1
getfield android/support/v4/app/Fragment/mContainerId I
putfield android/support/v4/app/FragmentState/mContainerId I
aload 0
aload 1
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
putfield android/support/v4/app/FragmentState/mTag Ljava/lang/String;
aload 0
aload 1
getfield android/support/v4/app/Fragment/mRetainInstance Z
putfield android/support/v4/app/FragmentState/mRetainInstance Z
aload 0
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
putfield android/support/v4/app/FragmentState/mDetached Z
aload 0
aload 1
getfield android/support/v4/app/Fragment/mArguments Landroid/os/Bundle;
putfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
return
.limit locals 2
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public instantiate(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
areturn
L0:
aload 0
getfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
L1:
aload 0
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mClassName Ljava/lang/String;
aload 0
getfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
invokestatic android/support/v4/app/Fragment/instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
putfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ifnull L2
aload 0
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
putfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
L2:
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mIndex I
aload 2
invokevirtual android/support/v4/app/Fragment/setIndex(ILandroid/support/v4/app/Fragment;)V
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mFromLayout Z
putfield android/support/v4/app/Fragment/mFromLayout Z
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
iconst_1
putfield android/support/v4/app/Fragment/mRestored Z
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mFragmentId I
putfield android/support/v4/app/Fragment/mFragmentId I
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mContainerId I
putfield android/support/v4/app/Fragment/mContainerId I
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mTag Ljava/lang/String;
putfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mRetainInstance Z
putfield android/support/v4/app/Fragment/mRetainInstance Z
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentState/mDetached Z
putfield android/support/v4/app/Fragment/mDetached Z
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 1
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L3
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Instantiated fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
getfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
areturn
.limit locals 3
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
iconst_1
istore 3
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mClassName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mIndex I
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield android/support/v4/app/FragmentState/mFromLayout Z
ifeq L0
iconst_1
istore 2
L1:
aload 1
iload 2
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mFragmentId I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mContainerId I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mTag Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/FragmentState/mRetainInstance Z
ifeq L2
iconst_1
istore 2
L3:
aload 1
iload 2
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield android/support/v4/app/FragmentState/mDetached Z
ifeq L4
iload 3
istore 2
L5:
aload 1
iload 2
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mArguments Landroid/os/Bundle;
invokevirtual android/os/Parcel/writeBundle(Landroid/os/Bundle;)V
aload 1
aload 0
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/os/Parcel/writeBundle(Landroid/os/Bundle;)V
return
L0:
iconst_0
istore 2
goto L1
L2:
iconst_0
istore 2
goto L3
L4:
iconst_0
istore 2
goto L5
.limit locals 4
.limit stack 2
.end method
