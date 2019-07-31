.bytecode 50.0
.class public final synchronized enum com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;>;"
.inner class public static final enum CALLBACK_TYPE inner com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE outer com/nd/android/u/contact/ui/task/OrgAsyncTask

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;

.field public static final enum 'GET_NODE_CHILDREN' Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;

.field public static final enum 'UPDATE_DATA' Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;

.method static <clinit>()V
new com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
dup
ldc "GET_NODE_CHILDREN"
iconst_0
invokespecial com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/GET_NODE_CHILDREN Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
new com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
dup
ldc "UPDATE_DATA"
iconst_1
invokespecial com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/UPDATE_DATA Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
iconst_2
anewarray com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
dup
iconst_0
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/GET_NODE_CHILDREN Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
aastore
dup
iconst_1
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/UPDATE_DATA Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
aastore
putstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/$VALUES [Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
ldc com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/$VALUES [Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
invokevirtual [Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
