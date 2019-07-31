.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/GlideUrl
.super java/lang/Object

.field private static final 'ALLOWED_URI_CHARS' Ljava/lang/String; = "@#&=*+-_.,:!?()/~'%"

.field private final 'headers' Lcom/bumptech/glide/load/model/Headers;

.field private 'safeStringUrl' Ljava/lang/String;

.field private 'safeUrl' Ljava/net/URL;

.field private final 'stringUrl' Ljava/lang/String;

.field private final 'url' Ljava/net/URL;

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
getstatic com/bumptech/glide/load/model/Headers/DEFAULT Lcom/bumptech/glide/load/model/Headers;
invokespecial com/bumptech/glide/load/model/GlideUrl/<init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "String url must not be empty or null: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "Headers must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/bumptech/glide/load/model/GlideUrl/stringUrl Ljava/lang/String;
aload 0
aconst_null
putfield com/bumptech/glide/load/model/GlideUrl/url Ljava/net/URL;
aload 0
aload 2
putfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/net/URL;)V
aload 0
aload 1
getstatic com/bumptech/glide/load/model/Headers/DEFAULT Lcom/bumptech/glide/load/model/Headers;
invokespecial com/bumptech/glide/load/model/GlideUrl/<init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "URL must not be null!"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "Headers must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/bumptech/glide/load/model/GlideUrl/url Ljava/net/URL;
aload 0
aconst_null
putfield com/bumptech/glide/load/model/GlideUrl/stringUrl Ljava/lang/String;
aload 0
aload 2
putfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
return
.limit locals 3
.limit stack 3
.end method

.method private getSafeStringUrl()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/safeStringUrl Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/stringUrl Ljava/lang/String;
astore 2
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/url Ljava/net/URL;
invokevirtual java/net/URL/toString()Ljava/lang/String;
astore 1
L1:
aload 0
aload 1
ldc "@#&=*+-_.,:!?()/~'%"
invokestatic android/net/Uri/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/bumptech/glide/load/model/GlideUrl/safeStringUrl Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/safeStringUrl Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method private getSafeUrl()Ljava/net/URL;
.throws java/net/MalformedURLException
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/safeUrl Ljava/net/URL;
ifnonnull L0
aload 0
new java/net/URL
dup
aload 0
invokespecial com/bumptech/glide/load/model/GlideUrl/getSafeStringUrl()Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
putfield com/bumptech/glide/load/model/GlideUrl/safeUrl Ljava/net/URL;
L0:
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/safeUrl Ljava/net/URL;
areturn
.limit locals 1
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/bumptech/glide/load/model/GlideUrl
ifeq L0
aload 1
checkcast com/bumptech/glide/load/model/GlideUrl
astore 1
iload 3
istore 2
aload 0
invokevirtual com/bumptech/glide/load/model/GlideUrl/getCacheKey()Ljava/lang/String;
aload 1
invokevirtual com/bumptech/glide/load/model/GlideUrl/getCacheKey()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iload 3
istore 2
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
aload 1
getfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getCacheKey()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/stringUrl Ljava/lang/String;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/stringUrl Ljava/lang/String;
areturn
L0:
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/url Ljava/net/URL;
invokevirtual java/net/URL/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHeaders()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
invokeinterface com/bumptech/glide/load/model/Headers/getHeaders()Ljava/util/Map; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokevirtual com/bumptech/glide/load/model/GlideUrl/getCacheKey()Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
invokevirtual java/lang/Object/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/bumptech/glide/load/model/GlideUrl/getCacheKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/GlideUrl/headers Lcom/bumptech/glide/load/model/Headers;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public toStringUrl()Ljava/lang/String;
aload 0
invokespecial com/bumptech/glide/load/model/GlideUrl/getSafeStringUrl()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public toURL()Ljava/net/URL;
.throws java/net/MalformedURLException
aload 0
invokespecial com/bumptech/glide/load/model/GlideUrl/getSafeUrl()Ljava/net/URL;
areturn
.limit locals 1
.limit stack 1
.end method
