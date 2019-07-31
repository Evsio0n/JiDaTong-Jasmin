.bytecode 50.0
.class public final synchronized enum com/product/android/business/login/LoginFlag
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/login/LoginFlag;>;"

.field private static final synthetic '$VALUES' [Lcom/product/android/business/login/LoginFlag;

.field public static final enum 'DEFAULT' Lcom/product/android/business/login/LoginFlag;

.field public static final enum 'EXIT' Lcom/product/android/business/login/LoginFlag;

.field public static final enum 'LOGIN' Lcom/product/android/business/login/LoginFlag;

.field private 'mValue' I

.method static <clinit>()V
new com/product/android/business/login/LoginFlag
dup
ldc "DEFAULT"
iconst_0
iconst_0
invokespecial com/product/android/business/login/LoginFlag/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
new com/product/android/business/login/LoginFlag
dup
ldc "LOGIN"
iconst_1
iconst_1
invokespecial com/product/android/business/login/LoginFlag/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/login/LoginFlag/LOGIN Lcom/product/android/business/login/LoginFlag;
new com/product/android/business/login/LoginFlag
dup
ldc "EXIT"
iconst_2
iconst_2
invokespecial com/product/android/business/login/LoginFlag/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/login/LoginFlag/EXIT Lcom/product/android/business/login/LoginFlag;
iconst_3
anewarray com/product/android/business/login/LoginFlag
dup
iconst_0
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
aastore
dup
iconst_1
getstatic com/product/android/business/login/LoginFlag/LOGIN Lcom/product/android/business/login/LoginFlag;
aastore
dup
iconst_2
getstatic com/product/android/business/login/LoginFlag/EXIT Lcom/product/android/business/login/LoginFlag;
aastore
putstatic com/product/android/business/login/LoginFlag/$VALUES [Lcom/product/android/business/login/LoginFlag;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
.signature "(I)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/product/android/business/login/LoginFlag/mValue I
return
.limit locals 4
.limit stack 3
.end method

.method public static getLoginFlag()Lcom/product/android/business/login/LoginFlag;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "login_flag"
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
invokevirtual com/product/android/business/login/LoginFlag/getValue()I
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
invokestatic com/product/android/business/login/LoginFlag/value2Flag(I)Lcom/product/android/business/login/LoginFlag;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static isLOGINEnumType()Z
invokestatic com/product/android/business/login/LoginFlag/getLoginFlag()Lcom/product/android/business/login/LoginFlag;
getstatic com/product/android/business/login/LoginFlag/LOGIN Lcom/product/android/business/login/LoginFlag;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method public static saveDEFAULTEnumType()V
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
invokestatic com/product/android/business/login/LoginFlag/saveLoginFlag(Lcom/product/android/business/login/LoginFlag;)V
return
.limit locals 0
.limit stack 1
.end method

.method public static saveEXITEnumType()V
getstatic com/product/android/business/login/LoginFlag/EXIT Lcom/product/android/business/login/LoginFlag;
invokestatic com/product/android/business/login/LoginFlag/saveLoginFlag(Lcom/product/android/business/login/LoginFlag;)V
return
.limit locals 0
.limit stack 1
.end method

.method public static saveLOGINEnumType()V
getstatic com/product/android/business/login/LoginFlag/LOGIN Lcom/product/android/business/login/LoginFlag;
invokestatic com/product/android/business/login/LoginFlag/saveLoginFlag(Lcom/product/android/business/login/LoginFlag;)V
return
.limit locals 0
.limit stack 1
.end method

.method private static saveLoginFlag(Lcom/product/android/business/login/LoginFlag;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "login_flag"
aload 0
invokevirtual com/product/android/business/login/LoginFlag/getValue()I
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public static value2Flag(I)Lcom/product/android/business/login/LoginFlag;
invokestatic com/product/android/business/login/LoginFlag/values()[Lcom/product/android/business/login/LoginFlag;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 4
getfield com/product/android/business/login/LoginFlag/mValue I
iload 0
if_icmpne L2
aload 4
areturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/login/LoginFlag;
ldc com/product/android/business/login/LoginFlag
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/login/LoginFlag
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/login/LoginFlag;
getstatic com/product/android/business/login/LoginFlag/$VALUES [Lcom/product/android/business/login/LoginFlag;
invokevirtual [Lcom/product/android/business/login/LoginFlag;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/login/LoginFlag;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getValue()I
aload 0
getfield com/product/android/business/login/LoginFlag/mValue I
ireturn
.limit locals 1
.limit stack 1
.end method
