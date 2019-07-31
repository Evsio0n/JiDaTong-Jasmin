.bytecode 50.0
.class public final synchronized enum com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;>;"
.inner class public static final enum NODE_TYPE inner com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE outer com/nd/android/u/contact/ui/bean/OrgNode

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;

.field public static final enum 'EXPEND_NODE' Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;

.field public static final enum 'UNEXPEND_NODE_GROUP' Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;

.field public static final enum 'UNEXPEND_NODE_USER' Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;

.method static <clinit>()V
new com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
dup
ldc "EXPEND_NODE"
iconst_0
invokespecial com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/EXPEND_NODE Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
new com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
dup
ldc "UNEXPEND_NODE_USER"
iconst_1
invokespecial com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_USER Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
new com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
dup
ldc "UNEXPEND_NODE_GROUP"
iconst_2
invokespecial com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_GROUP Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
iconst_3
anewarray com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
dup
iconst_0
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/EXPEND_NODE Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
aastore
dup
iconst_1
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_USER Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
aastore
dup
iconst_2
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_GROUP Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
aastore
putstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/$VALUES [Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
ldc com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/$VALUES [Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
invokevirtual [Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
