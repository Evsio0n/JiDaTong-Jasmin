.bytecode 50.0
.class public final synchronized enum com/product/android/business/ProductTypeDef$Product
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/ProductTypeDef$Product;>;"
.inner class public static final enum Product inner com/product/android/business/ProductTypeDef$Product outer com/product/android/business/ProductTypeDef

.field private static final synthetic '$VALUES' [Lcom/product/android/business/ProductTypeDef$Product;

.field public static final enum 'PRODUCT_5IUP' Lcom/product/android/business/ProductTypeDef$Product;

.field public static final enum 'PRODUCT_91UND' Lcom/product/android/business/ProductTypeDef$Product;

.field public static final enum 'PRODUCT_91XY' Lcom/product/android/business/ProductTypeDef$Product;

.field public static final enum 'PRODUCT_JIMEI' Lcom/product/android/business/ProductTypeDef$Product;

.method static <clinit>()V
new com/product/android/business/ProductTypeDef$Product
dup
ldc "PRODUCT_91UND"
iconst_0
invokespecial com/product/android/business/ProductTypeDef$Product/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
new com/product/android/business/ProductTypeDef$Product
dup
ldc "PRODUCT_91XY"
iconst_1
invokespecial com/product/android/business/ProductTypeDef$Product/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
new com/product/android/business/ProductTypeDef$Product
dup
ldc "PRODUCT_5IUP"
iconst_2
invokespecial com/product/android/business/ProductTypeDef$Product/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
new com/product/android/business/ProductTypeDef$Product
dup
ldc "PRODUCT_JIMEI"
iconst_3
invokespecial com/product/android/business/ProductTypeDef$Product/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_JIMEI Lcom/product/android/business/ProductTypeDef$Product;
iconst_4
anewarray com/product/android/business/ProductTypeDef$Product
dup
iconst_0
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
aastore
dup
iconst_1
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
aastore
dup
iconst_2
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
aastore
dup
iconst_3
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_JIMEI Lcom/product/android/business/ProductTypeDef$Product;
aastore
putstatic com/product/android/business/ProductTypeDef$Product/$VALUES [Lcom/product/android/business/ProductTypeDef$Product;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/ProductTypeDef$Product;
ldc com/product/android/business/ProductTypeDef$Product
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/ProductTypeDef$Product
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/$VALUES [Lcom/product/android/business/ProductTypeDef$Product;
invokevirtual [Lcom/product/android/business/ProductTypeDef$Product;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/ProductTypeDef$Product;
areturn
.limit locals 0
.limit stack 1
.end method
