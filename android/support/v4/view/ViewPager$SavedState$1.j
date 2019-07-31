.bytecode 50.0
.class final synchronized android/support/v4/view/ViewPager$SavedState$1
.super java/lang/Object
.implements android/support/v4/os/ParcelableCompatCreatorCallbacks
.signature "Ljava/lang/Object;Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<Landroid/support/v4/view/ViewPager$SavedState;>;"
.enclosing method android/support/v4/view/ViewPager$SavedState
.inner class public static SavedState inner android/support/v4/view/ViewPager$SavedState outer android/support/v4/view/ViewPager
.inner class static final inner android/support/v4/view/ViewPager$SavedState$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;
new android/support/v4/view/ViewPager$SavedState
dup
aload 1
aload 2
invokespecial android/support/v4/view/ViewPager$SavedState/<init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
aload 0
aload 1
aload 2
invokevirtual android/support/v4/view/ViewPager$SavedState$1/createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;
areturn
.limit locals 3
.limit stack 3
.end method

.method public newArray(I)[Landroid/support/v4/view/ViewPager$SavedState;
iload 1
anewarray android/support/v4/view/ViewPager$SavedState
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager$SavedState$1/newArray(I)[Landroid/support/v4/view/ViewPager$SavedState;
areturn
.limit locals 2
.limit stack 2
.end method
