.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/resource/drawable/DrawableResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "<T:Landroid/graphics/drawable/Drawable;>Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<TT;>;"

.field protected final 'drawable' Landroid/graphics/drawable/Drawable; signature "TT;"

.method public <init>(Landroid/graphics/drawable/Drawable;)V
.signature "(TT;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Drawable must not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/drawable/DrawableResource/drawable Landroid/graphics/drawable/Drawable;
return
.limit locals 2
.limit stack 3
.end method

.method public final get()Landroid/graphics/drawable/Drawable;
.signature "()TT;"
aload 0
getfield com/bumptech/glide/load/resource/drawable/DrawableResource/drawable Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
invokevirtual android/graphics/drawable/Drawable$ConstantState/newDrawable()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic get()Ljava/lang/Object;
aload 0
invokevirtual com/bumptech/glide/load/resource/drawable/DrawableResource/get()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method
