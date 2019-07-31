.bytecode 50.0
.class public synchronized com/bumptech/glide/signature/MediaStoreSignature
.super java/lang/Object
.implements com/bumptech/glide/load/Key

.field private final 'dateModified' J

.field private final 'mimeType' Ljava/lang/String;

.field private final 'orientation' I

.method public <init>(Ljava/lang/String;JI)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
aload 0
lload 2
putfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
aload 0
iload 4
putfield com/bumptech/glide/signature/MediaStoreSignature/orientation I
return
.limit locals 5
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
checkcast com/bumptech/glide/signature/MediaStoreSignature
astore 1
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
aload 1
getfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
lcmp
ifeq L4
iconst_0
ireturn
L4:
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/orientation I
aload 1
getfield com/bumptech/glide/signature/MediaStoreSignature/orientation I
if_icmpeq L5
iconst_0
ireturn
L5:
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
ifnull L6
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
aload 1
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
L7:
iconst_0
ireturn
L6:
aload 1
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
ifnull L1
goto L7
.limit locals 2
.limit stack 4
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
ifnull L0
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
istore 1
L1:
iload 1
bipush 31
imul
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
bipush 32
lushr
lxor
l2i
iadd
bipush 31
imul
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/orientation I
iadd
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 2
.limit stack 6
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
aload 1
bipush 12
invokestatic java/nio/ByteBuffer/allocate(I)Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/dateModified J
invokevirtual java/nio/ByteBuffer/putLong(J)Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/orientation I
invokevirtual java/nio/ByteBuffer/putInt(I)Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/array()[B
invokevirtual java/security/MessageDigest/update([B)V
aload 1
aload 0
getfield com/bumptech/glide/signature/MediaStoreSignature/mimeType Ljava/lang/String;
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
return
.limit locals 2
.limit stack 4
.end method
