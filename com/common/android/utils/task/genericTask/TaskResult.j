.bytecode 50.0
.class public final synchronized enum com/common/android/utils/task/genericTask/TaskResult
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/task/genericTask/TaskResult;>;"

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'AUTH_ERROR' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'CANCELLED' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'FAILED' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'HALF' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'IMAGEURL_ERROR' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'IO_ERROR' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'No_RESULT' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'OK' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'TICKET_AUTH_ERROR' Lcom/common/android/utils/task/genericTask/TaskResult;

.field public static final enum 'WAIT' Lcom/common/android/utils/task/genericTask/TaskResult;

.method static <clinit>()V
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "OK"
iconst_0
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "HALF"
iconst_1
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/HALF Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "FAILED"
iconst_2
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "CANCELLED"
iconst_3
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/CANCELLED Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "IO_ERROR"
iconst_4
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/IO_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "AUTH_ERROR"
iconst_5
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/AUTH_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "IMAGEURL_ERROR"
bipush 6
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/IMAGEURL_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "TICKET_AUTH_ERROR"
bipush 7
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/TICKET_AUTH_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "No_RESULT"
bipush 8
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
new com/common/android/utils/task/genericTask/TaskResult
dup
ldc "WAIT"
bipush 9
invokespecial com/common/android/utils/task/genericTask/TaskResult/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/task/genericTask/TaskResult/WAIT Lcom/common/android/utils/task/genericTask/TaskResult;
bipush 10
anewarray com/common/android/utils/task/genericTask/TaskResult
dup
iconst_0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
iconst_1
getstatic com/common/android/utils/task/genericTask/TaskResult/HALF Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
iconst_2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
iconst_3
getstatic com/common/android/utils/task/genericTask/TaskResult/CANCELLED Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
iconst_4
getstatic com/common/android/utils/task/genericTask/TaskResult/IO_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
iconst_5
getstatic com/common/android/utils/task/genericTask/TaskResult/AUTH_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
bipush 6
getstatic com/common/android/utils/task/genericTask/TaskResult/IMAGEURL_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
bipush 7
getstatic com/common/android/utils/task/genericTask/TaskResult/TICKET_AUTH_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
bipush 8
getstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
dup
bipush 9
getstatic com/common/android/utils/task/genericTask/TaskResult/WAIT Lcom/common/android/utils/task/genericTask/TaskResult;
aastore
putstatic com/common/android/utils/task/genericTask/TaskResult/$VALUES [Lcom/common/android/utils/task/genericTask/TaskResult;
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

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/task/genericTask/TaskResult;
ldc com/common/android/utils/task/genericTask/TaskResult
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/task/genericTask/TaskResult
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/task/genericTask/TaskResult;
getstatic com/common/android/utils/task/genericTask/TaskResult/$VALUES [Lcom/common/android/utils/task/genericTask/TaskResult;
invokevirtual [Lcom/common/android/utils/task/genericTask/TaskResult;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 0
.limit stack 1
.end method
