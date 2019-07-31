.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/internal/ViewCompat
.super java/lang/Object
.inner class static SDK11 inner com/handmark/pulltorefresh/library/internal/ViewCompat$SDK11 outer com/handmark/pulltorefresh/library/internal/ViewCompat
.inner class static SDK16 inner com/handmark/pulltorefresh/library/internal/ViewCompat$SDK16 outer com/handmark/pulltorefresh/library/internal/ViewCompat

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
aload 0
aload 1
invokestatic com/handmark/pulltorefresh/library/internal/ViewCompat$SDK16/postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
return
L0:
aload 0
aload 1
ldc2_w 16L
invokevirtual android/view/View/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
aload 0
aload 1
invokestatic com/handmark/pulltorefresh/library/internal/ViewCompat$SDK16/setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
return
L0:
aload 0
aload 1
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setLayerType(Landroid/view/View;I)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
iload 1
invokestatic com/handmark/pulltorefresh/library/internal/ViewCompat$SDK11/setLayerType(Landroid/view/View;I)V
L0:
return
.limit locals 2
.limit stack 2
.end method
