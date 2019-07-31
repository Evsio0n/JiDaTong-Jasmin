.bytecode 50.0
.class public synchronized com/bumptech/glide/signature/StringSignature
.super java/lang/Object
.implements com/bumptech/glide/load/Key

.field private final 'signature' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Signature cannot be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpne L0
iconst_1
ireturn
L0:
aload 1
ifnull L1
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpeq L2
L1:
iconst_0
ireturn
L2:
aload 1
checkcast com/bumptech/glide/signature/StringSignature
astore 1
aload 0
getfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
aload 1
getfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "StringSignature{signature='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
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

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
aload 1
aload 0
getfield com/bumptech/glide/signature/StringSignature/signature Ljava/lang/String;
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
return
.limit locals 2
.limit stack 3
.end method
