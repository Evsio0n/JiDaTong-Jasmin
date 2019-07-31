.bytecode 50.0
.class public final synchronized enum com/ant/liao/GifView$GifImageType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/ant/liao/GifView$GifImageType;>;"
.inner class public static final enum GifImageType inner com/ant/liao/GifView$GifImageType outer com/ant/liao/GifView

.field public static final enum 'COVER' Lcom/ant/liao/GifView$GifImageType;

.field private static final synthetic 'ENUM$VALUES' [Lcom/ant/liao/GifView$GifImageType;

.field public static final enum 'SYNC_DECODER' Lcom/ant/liao/GifView$GifImageType;

.field public static final enum 'WAIT_FINISH' Lcom/ant/liao/GifView$GifImageType;

.field final 'nativeInt' I

.method static <clinit>()V
new com/ant/liao/GifView$GifImageType
dup
ldc "WAIT_FINISH"
iconst_0
iconst_0
invokespecial com/ant/liao/GifView$GifImageType/<init>(Ljava/lang/String;II)V
putstatic com/ant/liao/GifView$GifImageType/WAIT_FINISH Lcom/ant/liao/GifView$GifImageType;
new com/ant/liao/GifView$GifImageType
dup
ldc "SYNC_DECODER"
iconst_1
iconst_1
invokespecial com/ant/liao/GifView$GifImageType/<init>(Ljava/lang/String;II)V
putstatic com/ant/liao/GifView$GifImageType/SYNC_DECODER Lcom/ant/liao/GifView$GifImageType;
new com/ant/liao/GifView$GifImageType
dup
ldc "COVER"
iconst_2
iconst_2
invokespecial com/ant/liao/GifView$GifImageType/<init>(Ljava/lang/String;II)V
putstatic com/ant/liao/GifView$GifImageType/COVER Lcom/ant/liao/GifView$GifImageType;
iconst_3
anewarray com/ant/liao/GifView$GifImageType
dup
iconst_0
getstatic com/ant/liao/GifView$GifImageType/WAIT_FINISH Lcom/ant/liao/GifView$GifImageType;
aastore
dup
iconst_1
getstatic com/ant/liao/GifView$GifImageType/SYNC_DECODER Lcom/ant/liao/GifView$GifImageType;
aastore
dup
iconst_2
getstatic com/ant/liao/GifView$GifImageType/COVER Lcom/ant/liao/GifView$GifImageType;
aastore
putstatic com/ant/liao/GifView$GifImageType/ENUM$VALUES [Lcom/ant/liao/GifView$GifImageType;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/ant/liao/GifView$GifImageType/nativeInt I
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ant/liao/GifView$GifImageType;
ldc com/ant/liao/GifView$GifImageType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/ant/liao/GifView$GifImageType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/ant/liao/GifView$GifImageType;
getstatic com/ant/liao/GifView$GifImageType/ENUM$VALUES [Lcom/ant/liao/GifView$GifImageType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/ant/liao/GifView$GifImageType
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
