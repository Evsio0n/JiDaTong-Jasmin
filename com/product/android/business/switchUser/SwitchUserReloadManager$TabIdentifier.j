.bytecode 50.0
.class public final synchronized enum com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;>;"
.inner class public static final enum TabIdentifier inner com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier outer com/product/android/business/switchUser/SwitchUserReloadManager

.field private static final synthetic '$VALUES' [Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.field public static final enum 'TAB_CHAT' Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.field public static final enum 'TAB_ME' Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.field public static final enum 'TAB_MORE' Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.field public static final enum 'TAB_SNS' Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.field public static final enum 'TAB_WATER_FALL' Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;

.method static <clinit>()V
new com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
ldc "TAB_CHAT"
iconst_0
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_CHAT Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
new com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
ldc "TAB_ME"
iconst_1
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_ME Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
new com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
ldc "TAB_SNS"
iconst_2
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_SNS Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
new com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
ldc "TAB_WATER_FALL"
iconst_3
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_WATER_FALL Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
new com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
ldc "TAB_MORE"
iconst_4
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_MORE Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
iconst_5
anewarray com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
dup
iconst_0
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_CHAT Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
aastore
dup
iconst_1
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_ME Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
aastore
dup
iconst_2
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_SNS Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
aastore
dup
iconst_3
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_WATER_FALL Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
aastore
dup
iconst_4
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_MORE Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
aastore
putstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/$VALUES [Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
ldc com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/$VALUES [Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
invokevirtual [Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
areturn
.limit locals 0
.limit stack 1
.end method
