.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/enums/RoleAuthority$CommentRole
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;>;"
.inner class public static final enum CommentRole inner com/nd/schoollife/common/enums/RoleAuthority$CommentRole outer com/nd/schoollife/common/enums/RoleAuthority

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;

.field public static final enum 'CREATOR' Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;

.field public static final enum 'NORMAL' Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;

.field private 'role' I

.method static <clinit>()V
new com/nd/schoollife/common/enums/RoleAuthority$CommentRole
dup
ldc "NORMAL"
iconst_0
iconst_0
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommentRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
new com/nd/schoollife/common/enums/RoleAuthority$CommentRole
dup
ldc "CREATOR"
iconst_1
iconst_1
invokespecial com/nd/schoollife/common/enums/RoleAuthority$CommentRole/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
iconst_2
anewarray com/nd/schoollife/common/enums/RoleAuthority$CommentRole
dup
iconst_0
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
aastore
dup
iconst_1
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
aastore
putstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
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
putfield com/nd/schoollife/common/enums/RoleAuthority$CommentRole/role I
return
.limit locals 4
.limit stack 3
.end method

.method public static isCommentCreator(J)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static isDeleteCommentEnableInCommuntiy(J)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static isDeleteCommentEnableInPostDetail(JJJII)Z
lload 0
lload 4
lcmp
ifne L0
iconst_1
istore 9
L1:
iload 9
istore 8
iload 9
ifne L2
lload 2
lload 4
lcmp
ifne L3
iconst_1
istore 8
L2:
iload 8
istore 9
iload 8
ifne L4
iload 6
bipush 16
if_icmpne L5
iload 7
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
if_icmplt L6
iconst_1
istore 9
L4:
iload 9
ireturn
L0:
iconst_0
istore 9
goto L1
L3:
iconst_0
istore 8
goto L2
L6:
iconst_0
ireturn
L5:
iload 8
istore 9
iload 6
bipush 8
if_icmpne L4
iload 7
getstatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$TeamRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$TeamRole/val()I
if_icmplt L7
iconst_1
ireturn
L7:
iconst_0
ireturn
.limit locals 10
.limit stack 4
.end method

.method public static isDeleteCommentEnableInTeam(J)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
ldc com/nd/schoollife/common/enums/RoleAuthority$CommentRole
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/enums/RoleAuthority$CommentRole
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommentRole/$VALUES [Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
invokevirtual [Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/enums/RoleAuthority$CommentRole;
areturn
.limit locals 0
.limit stack 1
.end method

.method public val()I
aload 0
getfield com/nd/schoollife/common/enums/RoleAuthority$CommentRole/role I
ireturn
.limit locals 1
.limit stack 1
.end method
