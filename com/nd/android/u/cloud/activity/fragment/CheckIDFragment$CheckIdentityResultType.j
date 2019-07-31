.bytecode 50.0
.class final synchronized enum com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;>;"
.inner class private static final enum CheckIdentityResultType inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.field public static final enum 'INVALID' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.field public static final enum 'TYPE_1' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.field public static final enum 'TYPE_2' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.field public static final enum 'TYPE_3' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.field public static final enum 'TYPE_4' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
ldc "INVALID"
iconst_0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/INVALID Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
ldc "TYPE_1"
iconst_1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_1 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
ldc "TYPE_2"
iconst_2
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_2 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
ldc "TYPE_3"
iconst_3
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_3 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
ldc "TYPE_4"
iconst_4
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_4 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
iconst_5
anewarray com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
dup
iconst_0
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/INVALID Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aastore
dup
iconst_1
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_1 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aastore
dup
iconst_2
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_2 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aastore
dup
iconst_3
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_3 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aastore
dup
iconst_4
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/TYPE_4 Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
aastore
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/$VALUES [Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
ldc com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/$VALUES [Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
invokevirtual [Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
areturn
.limit locals 0
.limit stack 1
.end method
