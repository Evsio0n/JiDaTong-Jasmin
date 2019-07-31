.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/OriginalKey
.super java/lang/Object
.implements com/bumptech/glide/load/Key

.field private final 'id' Ljava/lang/String;

.field private final 'signature' Lcom/bumptech/glide/load/Key;

.method public <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/OriginalKey/id Ljava/lang/String;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/OriginalKey/signature Lcom/bumptech/glide/load/Key;
return
.limit locals 3
.limit stack 2
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
checkcast com/bumptech/glide/load/engine/OriginalKey
astore 1
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/id Ljava/lang/String;
aload 1
getfield com/bumptech/glide/load/engine/OriginalKey/id Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
iconst_0
ireturn
L4:
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/signature Lcom/bumptech/glide/load/Key;
aload 1
getfield com/bumptech/glide/load/engine/OriginalKey/signature Lcom/bumptech/glide/load/Key;
invokeinterface com/bumptech/glide/load/Key/equals(Ljava/lang/Object;)Z 1
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/id Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/signature Lcom/bumptech/glide/load/Key;
invokeinterface com/bumptech/glide/load/Key/hashCode()I 0
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
aload 1
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/id Ljava/lang/String;
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/OriginalKey/signature Lcom/bumptech/glide/load/Key;
aload 1
invokeinterface com/bumptech/glide/load/Key/updateDiskCacheKey(Ljava/security/MessageDigest;)V 1
return
.limit locals 2
.limit stack 3
.end method
