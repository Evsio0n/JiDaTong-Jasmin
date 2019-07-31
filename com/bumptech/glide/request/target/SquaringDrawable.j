.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/SquaringDrawable
.super com/bumptech/glide/load/resource/drawable/GlideDrawable
.inner class static State inner com/bumptech/glide/request/target/SquaringDrawable$State outer com/bumptech/glide/request/target/SquaringDrawable

.field private 'mutated' Z

.field private 'state' Lcom/bumptech/glide/request/target/SquaringDrawable$State;

.field private 'wrapped' Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

.method public <init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
aload 0
new com/bumptech/glide/request/target/SquaringDrawable$State
dup
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
iload 2
invokespecial com/bumptech/glide/request/target/SquaringDrawable$State/<init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
aload 1
aconst_null
invokespecial com/bumptech/glide/request/target/SquaringDrawable/<init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
return
.limit locals 3
.limit stack 5
.end method

.method <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
aload 2
ifnonnull L0
aload 3
ifnull L1
aload 0
aload 1
invokestatic com/bumptech/glide/request/target/SquaringDrawable$State/access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;
aload 3
invokevirtual android/graphics/drawable/Drawable$ConstantState/newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/drawable/GlideDrawable
putfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
return
L1:
aload 0
aload 1
invokestatic com/bumptech/glide/request/target/SquaringDrawable$State/access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;
invokevirtual android/graphics/drawable/Drawable$ConstantState/newDrawable()Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/drawable/GlideDrawable
putfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
return
L0:
aload 0
aload 2
putfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
return
.limit locals 4
.limit stack 3
.end method

.method public clearColorFilter()V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/clearColorFilter()V
return
.limit locals 1
.limit stack 1
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/draw(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getAlpha()I
.annotation invisible Landroid/annotation/TargetApi;
value I = 19
.end annotation
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getAlpha()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getCallback()Landroid/graphics/drawable/Drawable$Callback;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getChangingConfigurations()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getChangingConfigurations()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getCurrent()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicHeight()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
invokestatic com/bumptech/glide/request/target/SquaringDrawable$State/access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicWidth()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
invokestatic com/bumptech/glide/request/target/SquaringDrawable$State/access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMinimumHeight()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getMinimumHeight()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMinimumWidth()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getMinimumWidth()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOpacity()I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getOpacity()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/getPadding(Landroid/graphics/Rect;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public invalidateSelf()V
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/invalidateSelf()V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/invalidateSelf()V
return
.limit locals 1
.limit stack 1
.end method

.method public isAnimated()Z
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/isAnimated()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRunning()Z
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/isRunning()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/mutated Z
ifne L0
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/mutate()Landroid/graphics/drawable/Drawable;
aload 0
if_acmpne L0
aload 0
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/mutate()Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/drawable/GlideDrawable
putfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 0
new com/bumptech/glide/request/target/SquaringDrawable$State
dup
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
invokespecial com/bumptech/glide/request/target/SquaringDrawable$State/<init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V
putfield com/bumptech/glide/request/target/SquaringDrawable/state Lcom/bumptech/glide/request/target/SquaringDrawable$State;
aload 0
iconst_1
putfield com/bumptech/glide/request/target/SquaringDrawable/mutated Z
L0:
aload 0
areturn
.limit locals 1
.limit stack 4
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
aload 0
aload 1
lload 2
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/scheduleSelf(Ljava/lang/Runnable;J)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
lload 2
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/scheduleSelf(Ljava/lang/Runnable;J)V
return
.limit locals 4
.limit stack 4
.end method

.method public setAlpha(I)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setAlpha(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setBounds(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/setBounds(IIII)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
iload 2
iload 3
iload 4
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setBounds(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public setBounds(Landroid/graphics/Rect;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/setBounds(Landroid/graphics/Rect;)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setBounds(Landroid/graphics/Rect;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setChangingConfigurations(I)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setChangingConfigurations(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
aload 2
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setColorFilter(Landroid/graphics/ColorFilter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setDither(Z)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setDither(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setFilterBitmap(Z)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setFilterBitmap(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setLoopCount(I)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setLoopCount(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setVisible(ZZ)Z
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
iload 1
iload 2
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/setVisible(ZZ)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public start()V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/start()V
return
.limit locals 1
.limit stack 1
.end method

.method public stop()V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/stop()V
return
.limit locals 1
.limit stack 1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/unscheduleSelf(Ljava/lang/Runnable;)V
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable/wrapped Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
aload 1
invokevirtual com/bumptech/glide/load/resource/drawable/GlideDrawable/unscheduleSelf(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 2
.end method
