.bytecode 50.0
.class public synchronized com/bumptech/glide/util/MultiClassKey
.super java/lang/Object

.field private 'first' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private 'second' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/Class;Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/util/MultiClassKey/set(Ljava/lang/Class;Ljava/lang/Class;)V
return
.limit locals 3
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
ifnull L2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpeq L3
L2:
iconst_0
ireturn
L3:
aload 1
checkcast com/bumptech/glide/util/MultiClassKey
astore 1
aload 0
getfield com/bumptech/glide/util/MultiClassKey/first Ljava/lang/Class;
aload 1
getfield com/bumptech/glide/util/MultiClassKey/first Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L4
iconst_0
ireturn
L4:
aload 0
getfield com/bumptech/glide/util/MultiClassKey/second Ljava/lang/Class;
aload 1
getfield com/bumptech/glide/util/MultiClassKey/second Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/util/MultiClassKey/first Ljava/lang/Class;
invokevirtual java/lang/Object/hashCode()I
bipush 31
imul
aload 0
getfield com/bumptech/glide/util/MultiClassKey/second Ljava/lang/Class;
invokevirtual java/lang/Object/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public set(Ljava/lang/Class;Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
aload 0
aload 1
putfield com/bumptech/glide/util/MultiClassKey/first Ljava/lang/Class;
aload 0
aload 2
putfield com/bumptech/glide/util/MultiClassKey/second Ljava/lang/Class;
return
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "MultiClassKey{first="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/util/MultiClassKey/first Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", second="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/util/MultiClassKey/second Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
