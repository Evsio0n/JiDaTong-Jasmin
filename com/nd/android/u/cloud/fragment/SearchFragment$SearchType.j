.bytecode 50.0
.class final synchronized enum com/nd/android/u/cloud/fragment/SearchFragment$SearchType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;>;"
.inner class static final enum SearchType inner com/nd/android/u/cloud/fragment/SearchFragment$SearchType outer com/nd/android/u/cloud/fragment/SearchFragment

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.field public static final enum 'contact_search' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.field public static final enum 'group_search' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.field public static final enum 'none_search' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.field public static final enum 'psp_search' Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;

.method static <clinit>()V
new com/nd/android/u/cloud/fragment/SearchFragment$SearchType
dup
ldc "none_search"
iconst_0
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/none_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchType
dup
ldc "contact_search"
iconst_1
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/contact_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchType
dup
ldc "group_search"
iconst_2
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/group_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchType
dup
ldc "psp_search"
iconst_3
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/psp_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
iconst_4
anewarray com/nd/android/u/cloud/fragment/SearchFragment$SearchType
dup
iconst_0
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/none_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aastore
dup
iconst_1
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/contact_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aastore
dup
iconst_2
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/group_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aastore
dup
iconst_3
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/psp_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
aastore
putstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/$VALUES [Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
ldc com/nd/android/u/cloud/fragment/SearchFragment$SearchType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/fragment/SearchFragment$SearchType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/$VALUES [Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
invokevirtual [Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
areturn
.limit locals 0
.limit stack 1
.end method
