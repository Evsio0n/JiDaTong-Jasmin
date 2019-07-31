.bytecode 50.0
.class public final synchronized enum com/product/android/commonInterface/contact/LocalSearchResult$ResultType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;>;"
.inner class public static final enum ResultType inner com/product/android/commonInterface/contact/LocalSearchResult$ResultType outer com/product/android/commonInterface/contact/LocalSearchResult

.field private static final synthetic '$VALUES' [Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;

.field public static final enum 'GROUP' Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;

.field public static final enum 'PSP' Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;

.field public static final enum 'USER' Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;

.method static <clinit>()V
new com/product/android/commonInterface/contact/LocalSearchResult$ResultType
dup
ldc "USER"
iconst_0
invokespecial com/product/android/commonInterface/contact/LocalSearchResult$ResultType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
new com/product/android/commonInterface/contact/LocalSearchResult$ResultType
dup
ldc "GROUP"
iconst_1
invokespecial com/product/android/commonInterface/contact/LocalSearchResult$ResultType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
new com/product/android/commonInterface/contact/LocalSearchResult$ResultType
dup
ldc "PSP"
iconst_2
invokespecial com/product/android/commonInterface/contact/LocalSearchResult$ResultType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
iconst_3
anewarray com/product/android/commonInterface/contact/LocalSearchResult$ResultType
dup
iconst_0
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
aastore
dup
iconst_1
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
aastore
dup
iconst_2
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/PSP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
aastore
putstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/$VALUES [Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
ldc com/product/android/commonInterface/contact/LocalSearchResult$ResultType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/commonInterface/contact/LocalSearchResult$ResultType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/$VALUES [Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
invokevirtual [Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
areturn
.limit locals 0
.limit stack 1
.end method
