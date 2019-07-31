.bytecode 50.0
.class public final synchronized enum com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;>;"
.inner class public static final enum ScopeType inner com/nd/android/forumsdk/business/constant/RequestConst$ScopeType outer com/nd/android/forumsdk/business/constant/RequestConst

.field private static final synthetic '$VALUES' [Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;

.field public static final enum 'COMMUNITY' Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;

.field public static final enum 'TEAM' Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;

.method static <clinit>()V
new com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
dup
ldc "TEAM"
iconst_0
invokespecial com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
new com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
dup
ldc "COMMUNITY"
iconst_1
invokespecial com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
iconst_2
anewarray com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
dup
iconst_0
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
aastore
dup
iconst_1
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
aastore
putstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/$VALUES [Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
ldc com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/forumsdk/business/constant/RequestConst$ScopeType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/$VALUES [Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
invokevirtual [Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
areturn
.limit locals 0
.limit stack 1
.end method
