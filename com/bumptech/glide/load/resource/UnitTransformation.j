.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/UnitTransformation
.super java/lang/Object
.implements com/bumptech/glide/load/Transformation
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/Transformation<TT;>;"

.field private static final 'TRANSFORMATION' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<*>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/UnitTransformation
dup
invokespecial com/bumptech/glide/load/resource/UnitTransformation/<init>()V
putstatic com/bumptech/glide/load/resource/UnitTransformation/TRANSFORMATION Lcom/bumptech/glide/load/Transformation;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static get()Lcom/bumptech/glide/load/resource/UnitTransformation;
.signature "<T:Ljava/lang/Object;>()Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
getstatic com/bumptech/glide/load/resource/UnitTransformation/TRANSFORMATION Lcom/bumptech/glide/load/Transformation;
checkcast com/bumptech/glide/load/resource/UnitTransformation
areturn
.limit locals 0
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;II)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
aload 1
areturn
.limit locals 4
.limit stack 1
.end method
