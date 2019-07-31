.bytecode 50.0
.class final synchronized com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
.super java/lang/Object
.implements com/bumptech/glide/load/model/LazyHeaderFactory
.inner class static final StringHeaderFactory inner com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory outer com/bumptech/glide/load/model/LazyHeaders

.field private final 'value' Ljava/lang/String;

.method <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public buildHeader()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
ifeq L0
aload 1
checkcast com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
astore 1
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
aload 1
getfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "StringHeaderFactory{value='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/value Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
