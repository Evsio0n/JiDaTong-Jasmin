.bytecode 50.0
.class public synchronized android/support/v4/os/ParcelableCompat
.super java/lang/Object
.inner class static CompatCreator inner android/support/v4/os/ParcelableCompat$CompatCreator outer android/support/v4/os/ParcelableCompat

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
.signature "<T:Ljava/lang/Object;>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<TT;>;)Landroid/os/Parcelable$Creator<TT;>;"
getstatic android/os/Build$VERSION/SDK_INT I
bipush 13
if_icmplt L0
aload 0
invokestatic android/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub/instantiate(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
pop
L0:
new android/support/v4/os/ParcelableCompat$CompatCreator
dup
aload 0
invokespecial android/support/v4/os/ParcelableCompat$CompatCreator/<init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V
areturn
.limit locals 1
.limit stack 3
.end method
