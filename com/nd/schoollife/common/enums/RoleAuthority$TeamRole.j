.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$TeamRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;>;"
.inner class public static final enum TeamRole inner com/nd/schoollife/common/enums/RoleAuthority$TeamRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;

.field public static final enum 'ADMIN' Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;

.field public static final enum 'CREATOR' Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;

.field public static final enum 'FOCUS' Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;

.field public static final enum 'NOTFOCUS' Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;

.field private 'role' I

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$TeamRole
dup
ldc "NOTFOCUS"
iconst_0
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$TeamRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/NOTFOCUS Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
new com/nd/schoollife/common/enums/RoleAuthority$TeamRole
dup
ldc "FOCUS"
iconst_1
iconst_1
invokespecial com/nd/schoollife/common/enums/RoleAuthority$TeamRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/FOCUS Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
new com/nd/schoollife/common/enums/RoleAuthority$TeamRole
dup
ldc "ADMIN"
iconst_2
iconst_2
invokespecial com/nd/schoollife/common/enums/RoleAuthority$TeamRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
new com/nd/schoollife/common/enums/RoleAuthority$TeamRole
dup
ldc "CREATOR"
iconst_3
iconst_3
invokespecial com/nd/schoollife/common/enums/RoleAuthority$TeamRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
iconst_4
anewarray com/nd/schoollife/common/enums/RoleAuthority$TeamRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/NOTFOCUS Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
aastore
dup
iconst_1
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/FOCUS Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
aastore
dup
iconst_2
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
aastore
dup
iconst_3
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
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
putfield com/nd/schoollife/common/enums/RoleAuthority$TeamRole/role I
return
.limit locals 4
.limit stack 3
.end method

.method public static isAlterTeamInfoEnable(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 1
L1:
iload 1
ireturn
L0:
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
iload 0
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isCreateTeamEnable(I)Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isFocusTeam(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/FOCUS Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 1
L1:
iload 1
ireturn
L0:
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
iload 0
if_icmpne L2
iconst_1
ireturn
L2:
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
iload 0
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isShowTeamManagerTag(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
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

.method public static isViewTeamInfoEnable(I)Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$TeamRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$TeamRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
areturn
.limit locals 0
.limit stack 1
.end method

.method public val()I
aload 0
getfield com/nd/schoollife/common/enums/RoleAuthority$TeamRole/role I
ireturn
.limit locals 1
.limit stack 1
.end method
