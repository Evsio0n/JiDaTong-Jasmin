.bytecode 50.0
.class public synchronized abstract enum com/google/gson/FieldNamingPolicy
.super java/lang/Enum
.implements com/google/gson/FieldNamingStrategy
.signature "Ljava/lang/Enum<Lcom/google/gson/FieldNamingPolicy;>;Lcom/google/gson/FieldNamingStrategy;"
.inner class static final enum inner com/google/gson/FieldNamingPolicy$1
.inner class static final enum inner com/google/gson/FieldNamingPolicy$2
.inner class static final enum inner com/google/gson/FieldNamingPolicy$3
.inner class static final enum inner com/google/gson/FieldNamingPolicy$4
.inner class static final enum inner com/google/gson/FieldNamingPolicy$5

.field private static final synthetic '$VALUES' [Lcom/google/gson/FieldNamingPolicy;

.field public static final enum 'IDENTITY' Lcom/google/gson/FieldNamingPolicy;

.field public static final enum 'LOWER_CASE_WITH_DASHES' Lcom/google/gson/FieldNamingPolicy;

.field public static final enum 'LOWER_CASE_WITH_UNDERSCORES' Lcom/google/gson/FieldNamingPolicy;

.field public static final enum 'UPPER_CAMEL_CASE' Lcom/google/gson/FieldNamingPolicy;

.field public static final enum 'UPPER_CAMEL_CASE_WITH_SPACES' Lcom/google/gson/FieldNamingPolicy;

.method static <clinit>()V
new com/google/gson/FieldNamingPolicy$1
dup
ldc "IDENTITY"
iconst_0
invokespecial com/google/gson/FieldNamingPolicy$1/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/FieldNamingPolicy/IDENTITY Lcom/google/gson/FieldNamingPolicy;
new com/google/gson/FieldNamingPolicy$2
dup
ldc "UPPER_CAMEL_CASE"
iconst_1
invokespecial com/google/gson/FieldNamingPolicy$2/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/FieldNamingPolicy/UPPER_CAMEL_CASE Lcom/google/gson/FieldNamingPolicy;
new com/google/gson/FieldNamingPolicy$3
dup
ldc "UPPER_CAMEL_CASE_WITH_SPACES"
iconst_2
invokespecial com/google/gson/FieldNamingPolicy$3/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/FieldNamingPolicy/UPPER_CAMEL_CASE_WITH_SPACES Lcom/google/gson/FieldNamingPolicy;
new com/google/gson/FieldNamingPolicy$4
dup
ldc "LOWER_CASE_WITH_UNDERSCORES"
iconst_3
invokespecial com/google/gson/FieldNamingPolicy$4/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/FieldNamingPolicy/LOWER_CASE_WITH_UNDERSCORES Lcom/google/gson/FieldNamingPolicy;
new com/google/gson/FieldNamingPolicy$5
dup
ldc "LOWER_CASE_WITH_DASHES"
iconst_4
invokespecial com/google/gson/FieldNamingPolicy$5/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/FieldNamingPolicy/LOWER_CASE_WITH_DASHES Lcom/google/gson/FieldNamingPolicy;
iconst_5
anewarray com/google/gson/FieldNamingPolicy
dup
iconst_0
getstatic com/google/gson/FieldNamingPolicy/IDENTITY Lcom/google/gson/FieldNamingPolicy;
aastore
dup
iconst_1
getstatic com/google/gson/FieldNamingPolicy/UPPER_CAMEL_CASE Lcom/google/gson/FieldNamingPolicy;
aastore
dup
iconst_2
getstatic com/google/gson/FieldNamingPolicy/UPPER_CAMEL_CASE_WITH_SPACES Lcom/google/gson/FieldNamingPolicy;
aastore
dup
iconst_3
getstatic com/google/gson/FieldNamingPolicy/LOWER_CASE_WITH_UNDERSCORES Lcom/google/gson/FieldNamingPolicy;
aastore
dup
iconst_4
getstatic com/google/gson/FieldNamingPolicy/LOWER_CASE_WITH_DASHES Lcom/google/gson/FieldNamingPolicy;
aastore
putstatic com/google/gson/FieldNamingPolicy/$VALUES [Lcom/google/gson/FieldNamingPolicy;
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

.method synthetic <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
aload 0
aload 1
iload 2
invokespecial com/google/gson/FieldNamingPolicy/<init>(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/google/gson/FieldNamingPolicy/upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokestatic com/google/gson/FieldNamingPolicy/separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
iload 2
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 0
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
iload 2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
iload 0
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method private static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
iconst_0
istore 3
L0:
iload 3
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L1
aload 0
iload 3
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
invokestatic java/lang/Character/isUpperCase(C)Z
ifeq L2
aload 4
invokevirtual java/lang/StringBuilder/length()I
ifeq L2
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 4
iload 2
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 2
.end method

.method private static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
iconst_0
istore 2
aload 0
iconst_0
invokevirtual java/lang/String/charAt(I)C
istore 1
L0:
iload 2
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L1
iload 1
invokestatic java/lang/Character/isLetter(C)Z
ifeq L2
L1:
iload 2
aload 0
invokevirtual java/lang/String/length()I
if_icmpne L3
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L4:
aload 3
areturn
L2:
aload 4
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 2
iconst_1
iadd
istore 2
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
istore 1
goto L0
L3:
aload 0
astore 3
iload 1
invokestatic java/lang/Character/isUpperCase(C)Z
ifne L4
aload 4
iload 1
invokestatic java/lang/Character/toUpperCase(C)C
aload 0
iload 2
iconst_1
iadd
invokestatic com/google/gson/FieldNamingPolicy/modifyString(CLjava/lang/String;I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
ldc com/google/gson/FieldNamingPolicy
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/google/gson/FieldNamingPolicy
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/google/gson/FieldNamingPolicy;
getstatic com/google/gson/FieldNamingPolicy/$VALUES [Lcom/google/gson/FieldNamingPolicy;
invokevirtual [Lcom/google/gson/FieldNamingPolicy;/clone()Ljava/lang/Object;
checkcast [Lcom/google/gson/FieldNamingPolicy;
areturn
.limit locals 0
.limit stack 1
.end method
