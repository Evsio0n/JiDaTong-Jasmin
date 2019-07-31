.bytecode 50.0
.class public final synchronized enum com/bumptech/glide/load/DecodeFormat
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/load/DecodeFormat;>;"

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/load/DecodeFormat;

.field public static final enum 'ALWAYS_ARGB_8888' Lcom/bumptech/glide/load/DecodeFormat;
.annotation visible Ljava/lang/Deprecated;
.end annotation
.end field

.field public static final 'DEFAULT' Lcom/bumptech/glide/load/DecodeFormat;

.field public static final enum 'PREFER_ARGB_8888' Lcom/bumptech/glide/load/DecodeFormat;

.field public static final enum 'PREFER_RGB_565' Lcom/bumptech/glide/load/DecodeFormat;

.method static <clinit>()V
new com/bumptech/glide/load/DecodeFormat
dup
ldc "ALWAYS_ARGB_8888"
iconst_0
invokespecial com/bumptech/glide/load/DecodeFormat/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/DecodeFormat/ALWAYS_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
new com/bumptech/glide/load/DecodeFormat
dup
ldc "PREFER_ARGB_8888"
iconst_1
invokespecial com/bumptech/glide/load/DecodeFormat/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/DecodeFormat/PREFER_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
new com/bumptech/glide/load/DecodeFormat
dup
ldc "PREFER_RGB_565"
iconst_2
invokespecial com/bumptech/glide/load/DecodeFormat/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/DecodeFormat/PREFER_RGB_565 Lcom/bumptech/glide/load/DecodeFormat;
iconst_3
anewarray com/bumptech/glide/load/DecodeFormat
dup
iconst_0
getstatic com/bumptech/glide/load/DecodeFormat/ALWAYS_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
aastore
dup
iconst_1
getstatic com/bumptech/glide/load/DecodeFormat/PREFER_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
aastore
dup
iconst_2
getstatic com/bumptech/glide/load/DecodeFormat/PREFER_RGB_565 Lcom/bumptech/glide/load/DecodeFormat;
aastore
putstatic com/bumptech/glide/load/DecodeFormat/$VALUES [Lcom/bumptech/glide/load/DecodeFormat;
getstatic com/bumptech/glide/load/DecodeFormat/PREFER_RGB_565 Lcom/bumptech/glide/load/DecodeFormat;
putstatic com/bumptech/glide/load/DecodeFormat/DEFAULT Lcom/bumptech/glide/load/DecodeFormat;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/DecodeFormat;
ldc com/bumptech/glide/load/DecodeFormat
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/load/DecodeFormat
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/load/DecodeFormat;
getstatic com/bumptech/glide/load/DecodeFormat/$VALUES [Lcom/bumptech/glide/load/DecodeFormat;
invokevirtual [Lcom/bumptech/glide/load/DecodeFormat;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/load/DecodeFormat;
areturn
.limit locals 0
.limit stack 1
.end method
