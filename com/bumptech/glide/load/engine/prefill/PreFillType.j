.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/engine/prefill/PreFillType
.super java/lang/Object
.inner class public static Builder inner com/bumptech/glide/load/engine/prefill/PreFillType$Builder outer com/bumptech/glide/load/engine/prefill/PreFillType

.field static final 'DEFAULT_CONFIG' Landroid/graphics/Bitmap$Config;

.field private final 'config' Landroid/graphics/Bitmap$Config;

.field private final 'height' I

.field private final 'weight' I

.field private final 'width' I

.method static <clinit>()V
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
putstatic com/bumptech/glide/load/engine/prefill/PreFillType/DEFAULT_CONFIG Landroid/graphics/Bitmap$Config;
return
.limit locals 0
.limit stack 1
.end method

.method <init>(IILandroid/graphics/Bitmap$Config;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 3
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Config must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
aload 0
iload 2
putfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
aload 0
aload 3
putfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
aload 0
iload 4
putfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
return
.limit locals 5
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/engine/prefill/PreFillType
ifeq L0
aload 1
checkcast com/bumptech/glide/load/engine/prefill/PreFillType
astore 1
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
aload 1
getfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
aload 1
getfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
aload 1
getfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
aload 1
getfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
if_acmpne L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
areturn
.limit locals 1
.limit stack 1
.end method

.method getHeight()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
ireturn
.limit locals 1
.limit stack 1
.end method

.method getWeight()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method getWidth()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
iadd
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/hashCode()I
iadd
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PreFillSize{width="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/width I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", height="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/height I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", config="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/config Landroid/graphics/Bitmap$Config;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", weight="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/prefill/PreFillType/weight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
