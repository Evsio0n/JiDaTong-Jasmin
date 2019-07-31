.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;>;"
.inner class public static final enum Scheme inner com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme outer com/nostra13/universalimageloader/core/download/ImageDownloader

.field public static final enum 'ASSETS' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'CONTENT' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'DRAWABLE' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'FILE' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'HTTP' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'HTTPS' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum 'UNKNOWN' Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field private 'scheme' Ljava/lang/String;

.field private 'uriPrefix' Ljava/lang/String;

.method static <clinit>()V
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "HTTP"
iconst_0
ldc "http"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTP Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "HTTPS"
iconst_1
ldc "https"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTPS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "FILE"
iconst_2
ldc "file"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "CONTENT"
iconst_3
ldc "content"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/CONTENT Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "ASSETS"
iconst_4
ldc "assets"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ASSETS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "DRAWABLE"
iconst_5
ldc "drawable"
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/DRAWABLE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
new com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
ldc "UNKNOWN"
bipush 6
ldc ""
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/UNKNOWN Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
bipush 7
anewarray com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTP Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/HTTPS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
iconst_2
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
iconst_3
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/CONTENT Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
iconst_4
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ASSETS Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
iconst_5
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/DRAWABLE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
dup
bipush 6
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/UNKNOWN Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aastore
putstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;ILjava/lang/String;)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/scheme Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
aload 3
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/uriPrefix Ljava/lang/String;
return
.limit locals 4
.limit stack 4
.end method

.method private belongsTo(Ljava/lang/String;)Z
aload 1
getstatic java/util/Locale/US Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/uriPrefix Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 0
ifnull L0
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
L0:
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/UNKNOWN Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
astore 3
L3:
aload 3
areturn
L2:
aload 5
iload 1
aaload
astore 4
aload 4
astore 3
aload 4
aload 0
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/belongsTo(Ljava/lang/String;)Z
ifne L3
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 6
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
ldc com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public crop(Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/belongsTo(Ljava/lang/String;)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "URI [%1$s] doesn't have expected scheme [%2$s]"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 0
getfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/scheme Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/uriPrefix Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 7
.end method

.method public wrap(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
getfield com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/uriPrefix Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
