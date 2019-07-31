.bytecode 50.0
.class synchronized android/support/v13/app/FragmentTabHost$SavedState
.super android/view/View$BaseSavedState
.inner class static SavedState inner android/support/v13/app/FragmentTabHost$SavedState outer android/support/v13/app/FragmentTabHost
.inner class static final inner android/support/v13/app/FragmentTabHost$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Landroid/support/v13/app/FragmentTabHost$SavedState;>;"

.field 'curTab' Ljava/lang/String;

.method static <clinit>()V
new android/support/v13/app/FragmentTabHost$SavedState$1
dup
invokespecial android/support/v13/app/FragmentTabHost$SavedState$1/<init>()V
putstatic android/support/v13/app/FragmentTabHost$SavedState/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
aload 1
invokespecial android/view/View$BaseSavedState/<init>(Landroid/os/Parcel;)V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield android/support/v13/app/FragmentTabHost$SavedState/curTab Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Landroid/support/v13/app/FragmentTabHost$1;)V
aload 0
aload 1
invokespecial android/support/v13/app/FragmentTabHost$SavedState/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method <init>(Landroid/os/Parcelable;)V
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
ldc "FragmentTabHost.SavedState{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " curTab="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v13/app/FragmentTabHost$SavedState/curTab Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
getfield android/support/v13/app/FragmentTabHost$SavedState/curTab Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
