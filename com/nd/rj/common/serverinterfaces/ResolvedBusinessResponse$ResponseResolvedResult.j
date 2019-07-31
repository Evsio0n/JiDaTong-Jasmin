.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;>;"
.inner class public static final enum ResponseResolvedResult inner com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult outer com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse

.field private static final synthetic '$VALUES' [Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.field public static final enum 'F_BUSINESS_FAIL' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.field public static final enum 'F_BUSINESS_FAIL_CONTENT_FAIL' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.field public static final enum 'F_BUSINESS_SUCCESS_CONTENT_FAIL' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.field public static final enum 'S_BUSINESS_SUCCESS' Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;

.method static <clinit>()V
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
dup
ldc "S_BUSINESS_SUCCESS"
iconst_0
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
dup
ldc "F_BUSINESS_FAIL"
iconst_1
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
dup
ldc "F_BUSINESS_SUCCESS_CONTENT_FAIL"
iconst_2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
dup
ldc "F_BUSINESS_FAIL_CONTENT_FAIL"
iconst_3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
iconst_4
anewarray com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
dup
iconst_0
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aastore
dup
iconst_1
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aastore
dup
iconst_2
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aastore
dup
iconst_3
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aastore
putstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/$VALUES [Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
ldc com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/$VALUES [Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
invokevirtual [Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
areturn
.limit locals 0
.limit stack 1
.end method
