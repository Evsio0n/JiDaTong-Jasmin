.bytecode 50.0
.class public final synchronized enum com/common/android/utils/concurrent/ETaskTypeId
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/concurrent/ETaskTypeId;>;"

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/concurrent/ETaskTypeId;

.field public static final enum 'SYNC_UNIT' Lcom/common/android/utils/concurrent/ETaskTypeId;

.field public static final enum 'TEST' Lcom/common/android/utils/concurrent/ETaskTypeId;

.field public static final enum 'UPLOAD_DOWNLOAD' Lcom/common/android/utils/concurrent/ETaskTypeId;

.method static <clinit>()V
new com/common/android/utils/concurrent/ETaskTypeId
dup
ldc "TEST"
iconst_0
invokespecial com/common/android/utils/concurrent/ETaskTypeId/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/ETaskTypeId/TEST Lcom/common/android/utils/concurrent/ETaskTypeId;
new com/common/android/utils/concurrent/ETaskTypeId
dup
ldc "UPLOAD_DOWNLOAD"
iconst_1
invokespecial com/common/android/utils/concurrent/ETaskTypeId/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/ETaskTypeId/UPLOAD_DOWNLOAD Lcom/common/android/utils/concurrent/ETaskTypeId;
new com/common/android/utils/concurrent/ETaskTypeId
dup
ldc "SYNC_UNIT"
iconst_2
invokespecial com/common/android/utils/concurrent/ETaskTypeId/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/ETaskTypeId/SYNC_UNIT Lcom/common/android/utils/concurrent/ETaskTypeId;
iconst_3
anewarray com/common/android/utils/concurrent/ETaskTypeId
dup
iconst_0
getstatic com/common/android/utils/concurrent/ETaskTypeId/TEST Lcom/common/android/utils/concurrent/ETaskTypeId;
aastore
dup
iconst_1
getstatic com/common/android/utils/concurrent/ETaskTypeId/UPLOAD_DOWNLOAD Lcom/common/android/utils/concurrent/ETaskTypeId;
aastore
dup
iconst_2
getstatic com/common/android/utils/concurrent/ETaskTypeId/SYNC_UNIT Lcom/common/android/utils/concurrent/ETaskTypeId;
aastore
putstatic com/common/android/utils/concurrent/ETaskTypeId/$VALUES [Lcom/common/android/utils/concurrent/ETaskTypeId;
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

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/concurrent/ETaskTypeId;
ldc com/common/android/utils/concurrent/ETaskTypeId
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/concurrent/ETaskTypeId
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/concurrent/ETaskTypeId;
getstatic com/common/android/utils/concurrent/ETaskTypeId/$VALUES [Lcom/common/android/utils/concurrent/ETaskTypeId;
invokevirtual [Lcom/common/android/utils/concurrent/ETaskTypeId;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/concurrent/ETaskTypeId;
areturn
.limit locals 0
.limit stack 1
.end method
