.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;>;"
.inner class public static final enum CommunityRole inner com/nd/schoollife/common/enums/RoleAuthority$CommunityRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;

.field public static final enum 'ADMIN' Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;

.field public static final enum 'CREATOR' Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;

.field public static final enum 'MENBER' Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;

.field public static final enum 'NOTMEMBER' Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;

.field private 'role' I

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
dup
ldc "NOTMEMBER"
iconst_0
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
new com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
dup
ldc "MENBER"
iconst_1
iconst_1
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/MENBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
new com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
dup
ldc "CREATOR"
iconst_2
iconst_2
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
new com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
dup
ldc "ADMIN"
iconst_3
iconst_3
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
iconst_4
anewarray com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/NOTMEMBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
aastore
dup
iconst_1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/MENBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
aastore
dup
iconst_2
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
aastore
dup
iconst_3
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
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
putfield com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/role I
return
.limit locals 4
.limit stack 3
.end method

.method public static isAlterCommunityInfoEnable(I)Z
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

.method public static isCreateCommunityEnable(I)Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isDismissCommunityEnable(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
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

.method public static isJoinCommunity(I)Z
iconst_0
istore 1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/MENBER Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L0
iconst_1
istore 1
L1:
iload 1
ireturn
L0:
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L2
iconst_1
ireturn
L2:
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/ADMIN Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
iload 0
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isShowCommunityManagerTag(I)Z
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

.method public static isViewCommunityInfoEnable(I)Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$CommunityRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
areturn
.limit locals 0
.limit stack 1
.end method

.method public val()I
aload 0
getfield com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/role I
ireturn
.limit locals 1
.limit stack 1
.end method
