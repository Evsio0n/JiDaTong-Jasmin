.bytecode 50.0
.class final synchronized enum com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;>;"
.inner class private static final enum ProcessState inner com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState outer com/nd/android/u/cloud/activity/MessageFragmentActivity

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;

.field public static final enum 'ADD' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;

.field public static final enum 'REMOVE' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
dup
ldc "ADD"
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
dup
ldc "REMOVE"
iconst_1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
iconst_2
anewarray com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
dup
iconst_0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/ADD Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
aastore
dup
iconst_1
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/REMOVE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
aastore
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/$VALUES [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
ldc com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState/$VALUES [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
invokevirtual [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$ProcessState;
areturn
.limit locals 0
.limit stack 1
.end method
