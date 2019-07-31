.bytecode 50.0
.class public final synchronized enum com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;>;"
.inner class public static final enum ImageType inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum 'GIF' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum 'JPEG' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum 'PNG' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum 'PNG_A' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum 'UNKNOWN' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field private final 'hasAlpha' Z

.method static <clinit>()V
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
ldc "GIF"
iconst_0
iconst_1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/<init>(Ljava/lang/String;IZ)V
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/GIF Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
ldc "JPEG"
iconst_1
iconst_0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/<init>(Ljava/lang/String;IZ)V
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/JPEG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
ldc "PNG_A"
iconst_2
iconst_1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/<init>(Ljava/lang/String;IZ)V
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG_A Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
ldc "PNG"
iconst_3
iconst_0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/<init>(Ljava/lang/String;IZ)V
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
ldc "UNKNOWN"
iconst_4
iconst_0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/<init>(Ljava/lang/String;IZ)V
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/UNKNOWN Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
iconst_5
anewarray com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
dup
iconst_0
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/GIF Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
aastore
dup
iconst_1
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/JPEG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
aastore
dup
iconst_2
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG_A Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
aastore
dup
iconst_3
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
aastore
dup
iconst_4
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/UNKNOWN Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
aastore
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/$VALUES [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;IZ)V
.signature "(Z)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/hasAlpha Z
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
ldc com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/$VALUES [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
invokevirtual [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
.limit locals 0
.limit stack 1
.end method

.method public hasAlpha()Z
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/hasAlpha Z
ireturn
.limit locals 1
.limit stack 1
.end method
