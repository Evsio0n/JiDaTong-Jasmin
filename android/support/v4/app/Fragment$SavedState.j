.bytecode 50.0
.class public synchronized android/support/v4/app/Fragment$SavedState
.super java/lang/Object
.implements android/os/Parcelable
.inner class public static SavedState inner android/support/v4/app/Fragment$SavedState outer android/support/v4/app/Fragment
.inner class static final inner android/support/v4/app/Fragment$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v4/app/Fragment$SavedState;>;"

.field final 'mState' Landroid/os/Bundle;

.method static <clinit>()V
new android/support/v4/app/Fragment$SavedState$1
dup
invokespecial android/support/v4/app/Fragment$SavedState$1/<init>()V
putstatic android/support/v4/app/Fragment$SavedState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method <init>(Landroid/os/Bundle;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
return
.limit locals 2
.limit stack 2
.end method

.method <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readBundle()Landroid/os/Bundle;
putfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
aload 2
ifnull L0
aload 0
getfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
ifnull L0
aload 0
getfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
aload 2
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
L0:
return
.limit locals 3
.limit stack 2
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
getfield android/support/v4/app/Fragment$SavedState/mState Landroid/os/Bundle;
invokevirtual android/os/Parcel/writeBundle(Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 2
.end method
