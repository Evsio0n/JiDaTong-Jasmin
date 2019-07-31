.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;

.field public static final enum 'INSTANCE' Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;

.field private 'mPackageName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/INSTANCE Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
iconst_1
anewarray com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
dup
iconst_0
getstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/INSTANCE Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
aastore
putstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/mPackageName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
ldc com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
getstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName
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
getfield com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/mPackageName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPackageName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/mPackageName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
