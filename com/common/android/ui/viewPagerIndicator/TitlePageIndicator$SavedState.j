.bytecode 50.0
.class synchronized com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState
.super android/view/View$BaseSavedState
.inner class static SavedState inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState outer com/common/android/ui/viewPagerIndicator/TitlePageIndicator
.inner class static final inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState;>;"

.field 'currentPage' I

.method static <clinit>()V
new com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState$1
dup
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState$1/<init>()V
putstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/CREATOR Landroid/os/Parcelable$Creator;
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
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/currentPage I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$1;)V
aload 0
aload 1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/<init>(Landroid/os/Parcel;)V
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/currentPage I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
