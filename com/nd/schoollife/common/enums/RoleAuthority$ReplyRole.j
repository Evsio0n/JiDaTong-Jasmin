.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$ReplyRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;>;"
.inner class public static final enum ReplyRole inner com/nd/schoollife/common/enums/RoleAuthority$ReplyRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;

.field public static final enum 'INSTANCE' Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$ReplyRole
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/INSTANCE Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
iconst_1
anewarray com/nd/schoollife/common/enums/RoleAuthority$ReplyRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/INSTANCE Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
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

.method public static isDeleteReplyEnable(JJJJII)Z
lload 0
lload 6
lcmp
ifne L0
iconst_1
istore 11
L1:
iload 11
istore 10
iload 11
ifne L2
lload 2
lload 6
lcmp
ifne L3
iconst_1
istore 10
L2:
iload 10
istore 11
iload 10
ifne L4
lload 4
lload 6
lcmp
ifne L5
iconst_1
istore 11
L4:
iload 11
istore 10
iload 11
ifne L6
iload 8
bipush 16
if_icmpne L7
iload 9
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmplt L8
iconst_1
istore 10
L6:
iload 10
ireturn
L0:
iconst_0
istore 11
goto L1
L3:
iconst_0
istore 10
goto L2
L5:
iconst_0
istore 11
goto L4
L8:
iconst_0
ireturn
L7:
iload 11
istore 10
iload 8
bipush 8
if_icmpne L6
iload 9
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
if_icmplt L9
iconst_1
ireturn
L9:
iconst_0
ireturn
.limit locals 12
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$ReplyRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$ReplyRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$ReplyRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$ReplyRole;
areturn
.limit locals 0
.limit stack 1
.end method
