.bytecode 50.0
.class final synchronized enum com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;>;"
.inner class private static final enum FragmentType inner com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType outer com/nd/android/u/cloud/activity/MessageFragmentActivity

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field public static final enum 'SEARCH' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field public static final enum 'TAB_COTACT' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field public static final enum 'TAB_MESSAGE' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.field public static final enum 'TAB_NO_MESSAGE' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
dup
ldc "TAB_MESSAGE"
iconst_0
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
dup
ldc "TAB_COTACT"
iconst_1
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
dup
ldc "SEARCH"
iconst_2
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
new com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
dup
ldc "TAB_NO_MESSAGE"
iconst_3
invokespecial com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
iconst_4
anewarray com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
dup
iconst_0
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aastore
dup
iconst_1
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_COTACT Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aastore
dup
iconst_2
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/SEARCH Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aastore
dup
iconst_3
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
aastore
putstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/$VALUES [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
ldc com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/$VALUES [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
invokevirtual [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
areturn
.limit locals 0
.limit stack 1
.end method
