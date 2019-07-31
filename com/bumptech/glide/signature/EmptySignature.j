.bytecode 50.0
.class public final synchronized com/bumptech/glide/signature/EmptySignature
.super java/lang/Object
.implements com/bumptech/glide/load/Key

.field private static final 'EMPTY_KEY' Lcom/bumptech/glide/signature/EmptySignature;

.method static <clinit>()V
new com/bumptech/glide/signature/EmptySignature
dup
invokespecial com/bumptech/glide/signature/EmptySignature/<init>()V
putstatic com/bumptech/glide/signature/EmptySignature/EMPTY_KEY Lcom/bumptech/glide/signature/EmptySignature;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static obtain()Lcom/bumptech/glide/signature/EmptySignature;
getstatic com/bumptech/glide/signature/EmptySignature/EMPTY_KEY Lcom/bumptech/glide/signature/EmptySignature;
areturn
.limit locals 0
.limit stack 1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
return
.limit locals 2
.limit stack 0
.end method
