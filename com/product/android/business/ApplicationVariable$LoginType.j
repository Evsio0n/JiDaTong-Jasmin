.bytecode 50.0
.class public final synchronized enum com/product/android/business/ApplicationVariable$LoginType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/ApplicationVariable$LoginType;>;"
.inner class public static final enum LoginType inner com/product/android/business/ApplicationVariable$LoginType outer com/product/android/business/ApplicationVariable

.field private static final synthetic '$VALUES' [Lcom/product/android/business/ApplicationVariable$LoginType;

.field public static final enum '_99_ACCOUNT_LOGIN' Lcom/product/android/business/ApplicationVariable$LoginType;

.field public static final enum '_JOB_NUMBER_LOGIN' Lcom/product/android/business/ApplicationVariable$LoginType;

.method static <clinit>()V
new com/product/android/business/ApplicationVariable$LoginType
dup
ldc "_JOB_NUMBER_LOGIN"
iconst_0
invokespecial com/product/android/business/ApplicationVariable$LoginType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
new com/product/android/business/ApplicationVariable$LoginType
dup
ldc "_99_ACCOUNT_LOGIN"
iconst_1
invokespecial com/product/android/business/ApplicationVariable$LoginType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
iconst_2
anewarray com/product/android/business/ApplicationVariable$LoginType
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
aastore
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
aastore
putstatic com/product/android/business/ApplicationVariable$LoginType/$VALUES [Lcom/product/android/business/ApplicationVariable$LoginType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/ApplicationVariable$LoginType;
ldc com/product/android/business/ApplicationVariable$LoginType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/ApplicationVariable$LoginType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/$VALUES [Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual [Lcom/product/android/business/ApplicationVariable$LoginType;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
.limit locals 0
.limit stack 1
.end method
