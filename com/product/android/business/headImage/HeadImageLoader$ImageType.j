.bytecode 50.0
.class public final synchronized enum com/product/android/business/headImage/HeadImageLoader$ImageType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/headImage/HeadImageLoader$ImageType;>;"
.inner class public static final enum ImageType inner com/product/android/business/headImage/HeadImageLoader$ImageType outer com/product/android/business/headImage/HeadImageLoader

.field private static final synthetic '$VALUES' [Lcom/product/android/business/headImage/HeadImageLoader$ImageType;

.field public static final enum 'DEFAULT' Lcom/product/android/business/headImage/HeadImageLoader$ImageType;

.field public static final enum 'LARGE' Lcom/product/android/business/headImage/HeadImageLoader$ImageType;

.field public static final enum 'MIDIUM' Lcom/product/android/business/headImage/HeadImageLoader$ImageType;

.method static <clinit>()V
new com/product/android/business/headImage/HeadImageLoader$ImageType
dup
ldc "LARGE"
iconst_0
invokespecial com/product/android/business/headImage/HeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/headImage/HeadImageLoader$ImageType/LARGE Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
new com/product/android/business/headImage/HeadImageLoader$ImageType
dup
ldc "MIDIUM"
iconst_1
invokespecial com/product/android/business/headImage/HeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
new com/product/android/business/headImage/HeadImageLoader$ImageType
dup
ldc "DEFAULT"
iconst_2
invokespecial com/product/android/business/headImage/HeadImageLoader$ImageType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/headImage/HeadImageLoader$ImageType/DEFAULT Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
iconst_3
anewarray com/product/android/business/headImage/HeadImageLoader$ImageType
dup
iconst_0
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/LARGE Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
aastore
dup
iconst_1
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
aastore
dup
iconst_2
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/DEFAULT Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
aastore
putstatic com/product/android/business/headImage/HeadImageLoader$ImageType/$VALUES [Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
ldc com/product/android/business/headImage/HeadImageLoader$ImageType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/headImage/HeadImageLoader$ImageType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/$VALUES [Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual [Lcom/product/android/business/headImage/HeadImageLoader$ImageType;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
areturn
.limit locals 0
.limit stack 1
.end method
