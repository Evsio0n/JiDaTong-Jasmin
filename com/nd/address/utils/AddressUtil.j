.bytecode 50.0
.class public final synchronized enum com/nd/address/utils/AddressUtil
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/address/utils/AddressUtil;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/address/utils/AddressUtil;

.field public static final enum 'INSTANCE' Lcom/nd/address/utils/AddressUtil;

.field private 'packageName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/address/utils/AddressUtil
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/address/utils/AddressUtil/<init>(Ljava/lang/String;I)V
putstatic com/nd/address/utils/AddressUtil/INSTANCE Lcom/nd/address/utils/AddressUtil;
iconst_1
anewarray com/nd/address/utils/AddressUtil
dup
iconst_0
getstatic com/nd/address/utils/AddressUtil/INSTANCE Lcom/nd/address/utils/AddressUtil;
aastore
putstatic com/nd/address/utils/AddressUtil/ENUM$VALUES [Lcom/nd/address/utils/AddressUtil;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/address/utils/AddressUtil;
ldc com/nd/address/utils/AddressUtil
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/address/utils/AddressUtil
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/address/utils/AddressUtil;
getstatic com/nd/address/utils/AddressUtil/ENUM$VALUES [Lcom/nd/address/utils/AddressUtil;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/address/utils/AddressUtil
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

.method public getPackageName()Ljava/lang/String;
aload 0
getfield com/nd/address/utils/AddressUtil/packageName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPackageName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/address/utils/AddressUtil/packageName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
