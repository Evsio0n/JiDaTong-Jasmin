.bytecode 50.0
.class public synchronized android/support/v4/widget/EdgeEffectCompat
.super java/lang/Object
.inner class static BaseEdgeEffectImpl inner android/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl outer android/support/v4/widget/EdgeEffectCompat
.inner class static EdgeEffectIcsImpl inner android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl outer android/support/v4/widget/EdgeEffectCompat
.inner class static abstract interface EdgeEffectImpl inner android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl outer android/support/v4/widget/EdgeEffectCompat

.field private static final 'IMPL' Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

.field private 'mEdgeEffect' Ljava/lang/Object;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl
dup
invokespecial android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl/<init>()V
putstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
return
L0:
new android/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl
dup
invokespecial android/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl/<init>()V
putstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 1
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object; 1
putfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
return
.limit locals 2
.limit stack 3
.end method

.method public draw(Landroid/graphics/Canvas;)Z
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
aload 1
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public finish()V
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/finish(Ljava/lang/Object;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public isFinished()Z
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/isFinished(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public onAbsorb(I)Z
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
iload 1
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/onAbsorb(Ljava/lang/Object;I)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onPull(F)Z
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
fload 1
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/onPull(Ljava/lang/Object;F)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onRelease()Z
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/onRelease(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setSize(II)V
getstatic android/support/v4/widget/EdgeEffectCompat/IMPL Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
aload 0
getfield android/support/v4/widget/EdgeEffectCompat/mEdgeEffect Ljava/lang/Object;
iload 1
iload 2
invokeinterface android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl/setSize(Ljava/lang/Object;II)V 3
return
.limit locals 3
.limit stack 4
.end method
