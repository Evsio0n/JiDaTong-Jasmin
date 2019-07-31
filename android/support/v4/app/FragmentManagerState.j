.bytecode 50.0
.class final synchronized android/support/v4/app/FragmentManagerState
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner android/support/v4/app/FragmentManagerState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v4/app/FragmentManagerState;>;"

.field 'mActive' [Landroid/support/v4/app/FragmentState;

.field 'mAdded' [I

.field 'mBackStack' [Landroid/support/v4/app/BackStackState;

.method static <clinit>()V
new android/support/v4/app/FragmentManagerState$1
dup
invokespecial android/support/v4/app/FragmentManagerState$1/<init>()V
putstatic android/support/v4/app/FragmentManagerState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
getstatic android/support/v4/app/FragmentState/CREATOR Landroid/os/Parcelable$Creator;
invokevirtual android/os/Parcel/createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
checkcast [Landroid/support/v4/app/FragmentState;
putfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
aload 0
aload 1
invokevirtual android/os/Parcel/createIntArray()[I
putfield android/support/v4/app/FragmentManagerState/mAdded [I
aload 0
aload 1
getstatic android/support/v4/app/BackStackState/CREATOR Landroid/os/Parcelable$Creator;
invokevirtual android/os/Parcel/createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
checkcast [Landroid/support/v4/app/BackStackState;
putfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
return
.limit locals 2
.limit stack 3
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
iload 2
invokevirtual android/os/Parcel/writeTypedArray([Landroid/os/Parcelable;I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerState/mAdded [I
invokevirtual android/os/Parcel/writeIntArray([I)V
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
iload 2
invokevirtual android/os/Parcel/writeTypedArray([Landroid/os/Parcelable;I)V
return
.limit locals 3
.limit stack 3
.end method
