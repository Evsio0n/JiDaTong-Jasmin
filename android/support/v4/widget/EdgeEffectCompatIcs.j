.bytecode 50.0
.class synchronized android/support/v4/widget/EdgeEffectCompatIcs
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
aload 0
checkcast android/widget/EdgeEffect
aload 1
invokevirtual android/widget/EdgeEffect/draw(Landroid/graphics/Canvas;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static finish(Ljava/lang/Object;)V
aload 0
checkcast android/widget/EdgeEffect
invokevirtual android/widget/EdgeEffect/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public static isFinished(Ljava/lang/Object;)Z
aload 0
checkcast android/widget/EdgeEffect
invokevirtual android/widget/EdgeEffect/isFinished()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
new android/widget/EdgeEffect
dup
aload 0
invokespecial android/widget/EdgeEffect/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
aload 0
checkcast android/widget/EdgeEffect
iload 1
invokevirtual android/widget/EdgeEffect/onAbsorb(I)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static onPull(Ljava/lang/Object;F)Z
aload 0
checkcast android/widget/EdgeEffect
fload 1
invokevirtual android/widget/EdgeEffect/onPull(F)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static onRelease(Ljava/lang/Object;)Z
aload 0
checkcast android/widget/EdgeEffect
astore 0
aload 0
invokevirtual android/widget/EdgeEffect/onRelease()V
aload 0
invokevirtual android/widget/EdgeEffect/isFinished()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static setSize(Ljava/lang/Object;II)V
aload 0
checkcast android/widget/EdgeEffect
iload 1
iload 2
invokevirtual android/widget/EdgeEffect/setSize(II)V
return
.limit locals 3
.limit stack 3
.end method
