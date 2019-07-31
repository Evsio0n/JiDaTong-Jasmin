.bytecode 50.0
.class public final synchronized enum com/product/android/business/ApplicationVariable$IDENTITY
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/ApplicationVariable$IDENTITY;>;"
.inner class public static final enum IDENTITY inner com/product/android/business/ApplicationVariable$IDENTITY outer com/product/android/business/ApplicationVariable

.field private static final synthetic '$VALUES' [Lcom/product/android/business/ApplicationVariable$IDENTITY;

.field public static final enum 'PARENTS' Lcom/product/android/business/ApplicationVariable$IDENTITY;

.field public static final enum 'STAFF' Lcom/product/android/business/ApplicationVariable$IDENTITY;

.field public static final enum 'STUDENT' Lcom/product/android/business/ApplicationVariable$IDENTITY;

.field public static final enum 'UNKNOWN' Lcom/product/android/business/ApplicationVariable$IDENTITY;

.field private 'mValue' I

.method static <clinit>()V
new com/product/android/business/ApplicationVariable$IDENTITY
dup
ldc "UNKNOWN"
iconst_0
iconst_m1
invokespecial com/product/android/business/ApplicationVariable$IDENTITY/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/ApplicationVariable$IDENTITY/UNKNOWN Lcom/product/android/business/ApplicationVariable$IDENTITY;
new com/product/android/business/ApplicationVariable$IDENTITY
dup
ldc "STAFF"
iconst_1
iconst_1
invokespecial com/product/android/business/ApplicationVariable$IDENTITY/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
new com/product/android/business/ApplicationVariable$IDENTITY
dup
ldc "STUDENT"
iconst_2
iconst_2
invokespecial com/product/android/business/ApplicationVariable$IDENTITY/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
new com/product/android/business/ApplicationVariable$IDENTITY
dup
ldc "PARENTS"
iconst_3
iconst_3
invokespecial com/product/android/business/ApplicationVariable$IDENTITY/<init>(Ljava/lang/String;II)V
putstatic com/product/android/business/ApplicationVariable$IDENTITY/PARENTS Lcom/product/android/business/ApplicationVariable$IDENTITY;
iconst_4
anewarray com/product/android/business/ApplicationVariable$IDENTITY
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable$IDENTITY/UNKNOWN Lcom/product/android/business/ApplicationVariable$IDENTITY;
aastore
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
aastore
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
aastore
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable$IDENTITY/PARENTS Lcom/product/android/business/ApplicationVariable$IDENTITY;
aastore
putstatic com/product/android/business/ApplicationVariable$IDENTITY/$VALUES [Lcom/product/android/business/ApplicationVariable$IDENTITY;
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
putfield com/product/android/business/ApplicationVariable$IDENTITY/mValue I
return
.limit locals 4
.limit stack 3
.end method

.method public static value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/values()[Lcom/product/android/business/ApplicationVariable$IDENTITY;
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
getfield com/product/android/business/ApplicationVariable$IDENTITY/mValue I
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
getstatic com/product/android/business/ApplicationVariable$IDENTITY/UNKNOWN Lcom/product/android/business/ApplicationVariable$IDENTITY;
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/ApplicationVariable$IDENTITY;
ldc com/product/android/business/ApplicationVariable$IDENTITY
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/ApplicationVariable$IDENTITY
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/$VALUES [Lcom/product/android/business/ApplicationVariable$IDENTITY;
invokevirtual [Lcom/product/android/business/ApplicationVariable$IDENTITY;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/ApplicationVariable$IDENTITY;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getValue()I
aload 0
getfield com/product/android/business/ApplicationVariable$IDENTITY/mValue I
ireturn
.limit locals 1
.limit stack 1
.end method
