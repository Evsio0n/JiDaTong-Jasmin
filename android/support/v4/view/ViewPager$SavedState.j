.bytecode 50.0
.class public synchronized android/support/v4/view/ViewPager$SavedState
.super android/view/View$BaseSavedState
.inner class public static SavedState inner android/support/v4/view/ViewPager$SavedState outer android/support/v4/view/ViewPager
.inner class static final inner android/support/v4/view/ViewPager$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v4/view/ViewPager$SavedState;>;"

.field 'adapterState' Landroid/os/Parcelable;

.field 'loader' Ljava/lang/ClassLoader;

.field 'position' I

.method static <clinit>()V
new android/support/v4/view/ViewPager$SavedState$1
dup
invokespecial android/support/v4/view/ViewPager$SavedState$1/<init>()V
invokestatic android/support/v4/os/ParcelableCompat/newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
putstatic android/support/v4/view/ViewPager$SavedState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
aload 0
aload 1
invokespecial android/view/View$BaseSavedState/<init>(Landroid/os/Parcel;)V
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 3
L0:
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield android/support/v4/view/ViewPager$SavedState/position I
aload 0
aload 1
aload 3
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
putfield android/support/v4/view/ViewPager$SavedState/adapterState Landroid/os/Parcelable;
aload 0
aload 3
putfield android/support/v4/view/ViewPager$SavedState/loader Ljava/lang/ClassLoader;
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/os/Parcelable;)V
aload 0
aload 1
invokespecial android/view/View$BaseSavedState/<init>(Landroid/os/Parcelable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "FragmentPager.SavedState{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " position="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/view/ViewPager$SavedState/position I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial android/view/View$BaseSavedState/writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield android/support/v4/view/ViewPager$SavedState/position I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield android/support/v4/view/ViewPager$SavedState/adapterState Landroid/os/Parcelable;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
return
.limit locals 3
.limit stack 3
.end method
