.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/SimpleResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<TT;>;"

.field protected final 'data' Ljava/lang/Object; signature "TT;"

.method public <init>(Ljava/lang/Object;)V
.signature "(TT;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Data must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/SimpleResource/data Ljava/lang/Object;
return
.limit locals 2
.limit stack 3
.end method

.method public final get()Ljava/lang/Object;
.signature "()TT;"
aload 0
getfield com/bumptech/glide/load/resource/SimpleResource/data Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSize()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
return
.limit locals 1
.limit stack 0
.end method
