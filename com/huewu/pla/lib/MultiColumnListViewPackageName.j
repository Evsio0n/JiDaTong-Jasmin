.bytecode 50.0
.class public final synchronized enum com/huewu/pla/lib/MultiColumnListViewPackageName
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/huewu/pla/lib/MultiColumnListViewPackageName;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/huewu/pla/lib/MultiColumnListViewPackageName;

.field public static final enum 'INSTANCE' Lcom/huewu/pla/lib/MultiColumnListViewPackageName;

.field private 'mPackageName' Ljava/lang/String;

.method static <clinit>()V
new com/huewu/pla/lib/MultiColumnListViewPackageName
dup
ldc "INSTANCE"
iconst_0
invokespecial com/huewu/pla/lib/MultiColumnListViewPackageName/<init>(Ljava/lang/String;I)V
putstatic com/huewu/pla/lib/MultiColumnListViewPackageName/INSTANCE Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
iconst_1
anewarray com/huewu/pla/lib/MultiColumnListViewPackageName
dup
iconst_0
getstatic com/huewu/pla/lib/MultiColumnListViewPackageName/INSTANCE Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
aastore
putstatic com/huewu/pla/lib/MultiColumnListViewPackageName/ENUM$VALUES [Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
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
putfield com/huewu/pla/lib/MultiColumnListViewPackageName/mPackageName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
ldc com/huewu/pla/lib/MultiColumnListViewPackageName
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/huewu/pla/lib/MultiColumnListViewPackageName
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
getstatic com/huewu/pla/lib/MultiColumnListViewPackageName/ENUM$VALUES [Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/huewu/pla/lib/MultiColumnListViewPackageName
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
getfield com/huewu/pla/lib/MultiColumnListViewPackageName/mPackageName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPackageName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnListViewPackageName/mPackageName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
