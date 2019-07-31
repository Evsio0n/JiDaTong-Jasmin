.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState
.super android/view/View$BaseSavedState
.inner class static SavedState inner com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState outer com/nd/android/backpacksystem/widget/TDAbsSpinner
.inner class static final inner com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState;>;"

.field 'position' I

.field 'selectedId' J

.method static <clinit>()V
new com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState$1
dup
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState$1/<init>()V
putstatic com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/CREATOR Landroid/os/Parcelable$Creator;
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
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/<init>(Landroid/os/Parcel;)V
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
ldc "AbsSpinner.SavedState{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " selectedId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " position="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial android/view/View$BaseSavedState/writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
