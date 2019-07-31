.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/prefill/PreFillType$Builder
.super java/lang/Object
.inner class public static Builder inner com/bumptech/glide/load/engine/prefill/PreFillType$Builder outer com/bumptech/glide/load/engine/prefill/PreFillType

.field private 'config' Landroid/graphics/Bitmap$Config;

.field private final 'height' I

.field private 'weight' I

.field private final 'width' I

.method public <init>(I)V
aload 0
iload 1
iload 1
invokespecial com/bumptech/glide/load/engine/prefill/PreFillType$Builder/<init>(II)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/weight I
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "Width must be > 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 2
ifgt L1
new java/lang/IllegalArgumentException
dup
ldc "Height must be > 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/width I
aload 0
iload 2
putfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/height I
return
.limit locals 3
.limit stack 3
.end method

.method build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
new com/bumptech/glide/load/engine/prefill/PreFillType
dup
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/width I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/height I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/config Landroid/graphics/Bitmap$Config;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/weight I
invokespecial com/bumptech/glide/load/engine/prefill/PreFillType/<init>(IILandroid/graphics/Bitmap$Config;I)V
areturn
.limit locals 1
.limit stack 6
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/config Landroid/graphics/Bitmap$Config;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
aload 0
aload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/config Landroid/graphics/Bitmap$Config;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setWeight(I)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "Weight must be > 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillType$Builder/weight I
aload 0
areturn
.limit locals 2
.limit stack 3
.end method
