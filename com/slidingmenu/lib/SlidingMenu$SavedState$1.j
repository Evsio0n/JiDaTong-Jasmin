.bytecode 50.0
.class synchronized com/slidingmenu/lib/SlidingMenu$SavedState$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/slidingmenu/lib/SlidingMenu$SavedState;>;"
.enclosing method com/slidingmenu/lib/SlidingMenu$SavedState
.inner class public static SavedState inner com/slidingmenu/lib/SlidingMenu$SavedState outer com/slidingmenu/lib/SlidingMenu
.inner class inner com/slidingmenu/lib/SlidingMenu$SavedState$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/slidingmenu/lib/SlidingMenu$SavedState;
new com/slidingmenu/lib/SlidingMenu$SavedState
dup
aload 1
aconst_null
invokespecial com/slidingmenu/lib/SlidingMenu$SavedState/<init>(Landroid/os/Parcel;Lcom/slidingmenu/lib/SlidingMenu$SavedState;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/slidingmenu/lib/SlidingMenu$SavedState$1/createFromParcel(Landroid/os/Parcel;)Lcom/slidingmenu/lib/SlidingMenu$SavedState;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/slidingmenu/lib/SlidingMenu$SavedState;
iload 1
anewarray com/slidingmenu/lib/SlidingMenu$SavedState
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/slidingmenu/lib/SlidingMenu$SavedState$1/newArray(I)[Lcom/slidingmenu/lib/SlidingMenu$SavedState;
areturn
.limit locals 2
.limit stack 2
.end method
