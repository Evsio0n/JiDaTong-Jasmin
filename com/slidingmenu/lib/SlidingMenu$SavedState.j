.bytecode 50.0
.class public synchronized com/slidingmenu/lib/SlidingMenu$SavedState
.super android/view/View$BaseSavedState
.inner class public static SavedState inner com/slidingmenu/lib/SlidingMenu$SavedState outer com/slidingmenu/lib/SlidingMenu
.inner class inner com/slidingmenu/lib/SlidingMenu$SavedState$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/slidingmenu/lib/SlidingMenu$SavedState;>;"

.field private final 'mItem' I

.method static <clinit>()V
new com/slidingmenu/lib/SlidingMenu$SavedState$1
dup
invokespecial com/slidingmenu/lib/SlidingMenu$SavedState$1/<init>()V
putstatic com/slidingmenu/lib/SlidingMenu$SavedState/CREATOR Landroid/os/Parcelable$Creator;
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
putfield com/slidingmenu/lib/SlidingMenu$SavedState/mItem I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/slidingmenu/lib/SlidingMenu$SavedState;)V
aload 0
aload 1
invokespecial com/slidingmenu/lib/SlidingMenu$SavedState/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/os/Parcelable;I)V
aload 0
aload 1
invokespecial android/view/View$BaseSavedState/<init>(Landroid/os/Parcelable;)V
aload 0
iload 2
putfield com/slidingmenu/lib/SlidingMenu$SavedState/mItem I
return
.limit locals 3
.limit stack 2
.end method

.method public getItem()I
aload 0
getfield com/slidingmenu/lib/SlidingMenu$SavedState/mItem I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial android/view/View$BaseSavedState/writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/slidingmenu/lib/SlidingMenu$SavedState/mItem I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
