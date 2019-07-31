.bytecode 50.0
.class public final synchronized enum com/nd/android/util/ListState
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/util/ListState;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/util/ListState;

.field public static final enum 'LOADMORE' Lcom/nd/android/util/ListState;

.field public static final enum 'NORMAL' Lcom/nd/android/util/ListState;

.field public static final enum 'REFRESH' Lcom/nd/android/util/ListState;

.method static <clinit>()V
new com/nd/android/util/ListState
dup
ldc "NORMAL"
iconst_0
invokespecial com/nd/android/util/ListState/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
new com/nd/android/util/ListState
dup
ldc "REFRESH"
iconst_1
invokespecial com/nd/android/util/ListState/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
new com/nd/android/util/ListState
dup
ldc "LOADMORE"
iconst_2
invokespecial com/nd/android/util/ListState/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
iconst_3
anewarray com/nd/android/util/ListState
dup
iconst_0
getstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
aastore
dup
iconst_1
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aastore
dup
iconst_2
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aastore
putstatic com/nd/android/util/ListState/$VALUES [Lcom/nd/android/util/ListState;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/util/ListState;
ldc com/nd/android/util/ListState
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/util/ListState
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/util/ListState;
getstatic com/nd/android/util/ListState/$VALUES [Lcom/nd/android/util/ListState;
invokevirtual [Lcom/nd/android/util/ListState;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/util/ListState;
areturn
.limit locals 0
.limit stack 1
.end method
