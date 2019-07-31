.bytecode 50.0
.class synchronized android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl
.super java/lang/Object
.implements android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl
.inner class static EdgeEffectIcsImpl inner android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl outer android/support/v4/widget/EdgeEffectCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
aload 1
aload 2
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public finish(Ljava/lang/Object;)V
aload 1
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/finish(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 1
.end method

.method public isFinished(Ljava/lang/Object;)Z
aload 1
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/isFinished(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
aload 1
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 1
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
aload 1
iload 2
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/onAbsorb(Ljava/lang/Object;I)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onPull(Ljava/lang/Object;F)Z
aload 1
fload 2
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/onPull(Ljava/lang/Object;F)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onRelease(Ljava/lang/Object;)Z
aload 1
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/onRelease(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setSize(Ljava/lang/Object;II)V
aload 1
iload 2
iload 3
invokestatic android/support/v4/widget/EdgeEffectCompatIcs/setSize(Ljava/lang/Object;II)V
return
.limit locals 4
.limit stack 3
.end method
