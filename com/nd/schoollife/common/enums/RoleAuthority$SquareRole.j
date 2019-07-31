.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$SquareRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;>;"
.inner class public static final enum SquareRole inner com/nd/schoollife/common/enums/RoleAuthority$SquareRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;

.field public static final enum 'INSTANCE' Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$SquareRole
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$SquareRole/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$SquareRole/INSTANCE Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
iconst_1
anewarray com/nd/schoollife/common/enums/RoleAuthority$SquareRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$SquareRole/INSTANCE Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$SquareRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
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

.method public static isCommunityManager(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$SquareRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$SquareRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$SquareRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$SquareRole;
areturn
.limit locals 0
.limit stack 1
.end method
