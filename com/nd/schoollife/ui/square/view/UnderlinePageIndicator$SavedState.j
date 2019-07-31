.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState
.super android/view/View$BaseSavedState
.inner class static SavedState inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState outer com/nd/schoollife/ui/square/view/UnderlinePageIndicator
.inner class static final inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState;>;"

.field 'currentPage' I

.method static <clinit>()V
new com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState$1
dup
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState$1/<init>()V
putstatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/CREATOR Landroid/os/Parcelable$Creator;
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
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/currentPage I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/os/Parcelable;)V
aload 0
aload 1
invokespecial android/view/View$BaseSavedState/<init>(Landroid/os/Parcelable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial android/view/View$BaseSavedState/writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/currentPage I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
