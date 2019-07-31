.bytecode 50.0
.class final synchronized enum com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;>;"
.inner class private static final enum RowType inner com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType outer com/nd/android/u/contact/adapter/FriendSelectAdapter

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;

.field public static final enum 'NET_SEARCH_ROW' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;

.field public static final enum 'NET_SEARCH_TIP_ROW' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;

.field public static final enum 'SEARCH_CONTACT_ROW' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;

.field 'mValue' I

.method static <clinit>()V
new com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
dup
ldc "SEARCH_CONTACT_ROW"
iconst_0
iconst_0
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
new com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
dup
ldc "NET_SEARCH_TIP_ROW"
iconst_1
iconst_1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_TIP_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
new com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
dup
ldc "NET_SEARCH_ROW"
iconst_2
iconst_2
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
iconst_3
anewarray com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
dup
iconst_0
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
aastore
dup
iconst_1
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_TIP_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
aastore
dup
iconst_2
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
aastore
putstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/$VALUES [Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
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
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/mValue I
return
.limit locals 4
.limit stack 3
.end method

.method static value2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
invokestatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/values()[Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
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
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/mValue I
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
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
ldc com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/$VALUES [Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
invokevirtual [Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
areturn
.limit locals 0
.limit stack 1
.end method
