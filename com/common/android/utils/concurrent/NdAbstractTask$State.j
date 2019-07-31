.bytecode 50.0
.class public final synchronized enum com/common/android/utils/concurrent/NdAbstractTask$State
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/concurrent/NdAbstractTask$State;>;"
.inner class public static final enum State inner com/common/android/utils/concurrent/NdAbstractTask$State outer com/common/android/utils/concurrent/NdAbstractTask

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.field public static final enum 'COMMITTED' Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.field public static final enum 'FINISHED' Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.field public static final enum 'NONE' Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.field public static final enum 'STAGED' Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.method static <clinit>()V
new com/common/android/utils/concurrent/NdAbstractTask$State
dup
ldc "NONE"
iconst_0
invokespecial com/common/android/utils/concurrent/NdAbstractTask$State/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdAbstractTask$State/NONE Lcom/common/android/utils/concurrent/NdAbstractTask$State;
new com/common/android/utils/concurrent/NdAbstractTask$State
dup
ldc "STAGED"
iconst_1
invokespecial com/common/android/utils/concurrent/NdAbstractTask$State/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdAbstractTask$State/STAGED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
new com/common/android/utils/concurrent/NdAbstractTask$State
dup
ldc "COMMITTED"
iconst_2
invokespecial com/common/android/utils/concurrent/NdAbstractTask$State/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdAbstractTask$State/COMMITTED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
new com/common/android/utils/concurrent/NdAbstractTask$State
dup
ldc "FINISHED"
iconst_3
invokespecial com/common/android/utils/concurrent/NdAbstractTask$State/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdAbstractTask$State/FINISHED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
iconst_4
anewarray com/common/android/utils/concurrent/NdAbstractTask$State
dup
iconst_0
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/NONE Lcom/common/android/utils/concurrent/NdAbstractTask$State;
aastore
dup
iconst_1
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/STAGED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
aastore
dup
iconst_2
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/COMMITTED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
aastore
dup
iconst_3
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/FINISHED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
aastore
putstatic com/common/android/utils/concurrent/NdAbstractTask$State/$VALUES [Lcom/common/android/utils/concurrent/NdAbstractTask$State;
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

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/concurrent/NdAbstractTask$State;
ldc com/common/android/utils/concurrent/NdAbstractTask$State
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/concurrent/NdAbstractTask$State
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/concurrent/NdAbstractTask$State;
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/$VALUES [Lcom/common/android/utils/concurrent/NdAbstractTask$State;
invokevirtual [Lcom/common/android/utils/concurrent/NdAbstractTask$State;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/concurrent/NdAbstractTask$State;
areturn
.limit locals 0
.limit stack 1
.end method
