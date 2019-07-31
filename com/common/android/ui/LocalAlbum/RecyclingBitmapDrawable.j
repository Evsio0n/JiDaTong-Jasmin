.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable
.super android/graphics/drawable/BitmapDrawable

.field static final 'LOG_TAG' Ljava/lang/String; = "CountingBitmapDrawable"

.field private 'mCacheRefCount' I

.field private 'mDisplayRefCount' I

.field private 'mHasBeenDisplayed' Z

.method public <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
aload 0
aload 1
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
aload 0
iconst_0
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
aload 0
iconst_0
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
return
.limit locals 3
.limit stack 3
.end method

.method private checkState()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
ifgt L3
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
ifgt L3
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mHasBeenDisplayed Z
ifeq L3
aload 0
invokespecial com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/hasValidBitmap()Z
istore 1
L1:
iload 1
ifeq L3
L3:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method private hasValidBitmap()Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
invokevirtual com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
astore 2
L1:
aload 2
ifnull L5
L3:
aload 2
invokevirtual android/graphics/Bitmap/isRecycled()Z
istore 1
L4:
iload 1
ifne L5
iconst_1
istore 1
L6:
aload 0
monitorexit
iload 1
ireturn
L5:
iconst_0
istore 1
goto L6
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public setIsCached(Z)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
iload 1
ifeq L4
L0:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
iconst_1
iadd
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
L1:
aload 0
monitorexit
L3:
aload 0
invokespecial com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/checkState()V
return
L4:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
iconst_1
isub
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mCacheRefCount I
L5:
goto L1
L2:
astore 2
L6:
aload 0
monitorexit
L7:
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public setIsDisplayed(Z)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
iload 1
ifeq L4
L0:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
iconst_1
iadd
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
aload 0
iconst_1
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mHasBeenDisplayed Z
L1:
aload 0
monitorexit
L3:
aload 0
invokespecial com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/checkState()V
return
L4:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
iconst_1
isub
putfield com/common/android/ui/LocalAlbum/RecyclingBitmapDrawable/mDisplayRefCount I
L5:
goto L1
L2:
astore 2
L6:
aload 0
monitorexit
L7:
aload 2
athrow
.limit locals 3
.limit stack 3
.end method
