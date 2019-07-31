.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$PostRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;>;"
.inner class public static final enum PostRole inner com/nd/schoollife/common/enums/RoleAuthority$PostRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;

.field public static final enum 'CREATOR' Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;

.field public static final enum 'NORMAL' Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;

.field private 'role' I

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$PostRole
dup
ldc "NORMAL"
iconst_0
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$PostRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
new com/nd/schoollife/common/enums/RoleAuthority$PostRole
dup
ldc "CREATOR"
iconst_1
iconst_1
invokespecial com/nd/schoollife/common/enums/RoleAuthority$PostRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
iconst_2
anewarray com/nd/schoollife/common/enums/RoleAuthority$PostRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
aastore
dup
iconst_1
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
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
putfield com/nd/schoollife/common/enums/RoleAuthority$PostRole/role I
return
.limit locals 4
.limit stack 3
.end method

.method public static isDeletePostEnableInCommuntiy(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 1
L1:
iload 1
ireturn
L0:
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isDeletePostEnableInPostDetail(III)Z
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$PostRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 3
L1:
iload 3
istore 4
iload 3
ifne L2
iload 1
bipush 16
if_icmpne L3
iload 2
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmplt L4
iconst_1
istore 4
L2:
iload 4
ireturn
L0:
iconst_0
istore 3
goto L1
L4:
iconst_0
ireturn
L3:
iload 3
istore 4
iload 1
bipush 8
if_icmpne L2
iload 2
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
if_icmplt L5
iconst_1
ireturn
L5:
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method public static isDeletePostEnableInTeam(I)Z
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

.method public static isPostCreator(J)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$PostRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$PostRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
areturn
.limit locals 0
.limit stack 1
.end method

.method public val()I
aload 0
getfield com/nd/schoollife/common/enums/RoleAuthority$PostRole/role I
ireturn
.limit locals 1
.limit stack 1
.end method
