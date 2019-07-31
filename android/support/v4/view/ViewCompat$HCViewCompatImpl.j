.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompat$HCViewCompatImpl
.super android/support/v4/view/ViewCompat$GBViewCompatImpl
.inner class static HCViewCompatImpl inner android/support/v4/view/ViewCompat$HCViewCompatImpl outer android/support/v4/view/ViewCompat

.method <init>()V
aload 0
invokespecial android/support/v4/view/ViewCompat$GBViewCompatImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method getFrameTime()J
invokestatic android/support/v4/view/ViewCompatHC/getFrameTime()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLayerType(Landroid/view/View;)I
aload 1
invokestatic android/support/v4/view/ViewCompatHC/getLayerType(Landroid/view/View;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
aload 1
iload 2
aload 3
invokestatic android/support/v4/view/ViewCompatHC/setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
return
.limit locals 4
.limit stack 3
.end method
