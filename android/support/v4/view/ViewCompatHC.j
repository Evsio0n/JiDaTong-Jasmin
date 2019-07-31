.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompatHC
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static getFrameTime()J
invokestatic android/animation/ValueAnimator/getFrameDelay()J
lreturn
.limit locals 0
.limit stack 2
.end method

.method public static getLayerType(Landroid/view/View;)I
aload 0
invokevirtual android/view/View/getLayerType()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
aload 0
iload 1
aload 2
invokevirtual android/view/View/setLayerType(ILandroid/graphics/Paint;)V
return
.limit locals 3
.limit stack 3
.end method
