.bytecode 50.0
.class public final synchronized enum com/common/android/utils/concurrent/NdCacheAsyncTask$Status
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;>;"
.inner class public static final enum Status inner com/common/android/utils/concurrent/NdCacheAsyncTask$Status outer com/common/android/utils/concurrent/NdCacheAsyncTask

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;

.field public static final enum 'FINISHED' Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;

.field public static final enum 'PENDING' Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;

.field public static final enum 'RUNNING' Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;

.method static <clinit>()V
new com/common/android/utils/concurrent/NdCacheAsyncTask$Status
dup
ldc "PENDING"
iconst_0
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/PENDING Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
new com/common/android/utils/concurrent/NdCacheAsyncTask$Status
dup
ldc "RUNNING"
iconst_1
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
new com/common/android/utils/concurrent/NdCacheAsyncTask$Status
dup
ldc "FINISHED"
iconst_2
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask$Status/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
iconst_3
anewarray com/common/android/utils/concurrent/NdCacheAsyncTask$Status
dup
iconst_0
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/PENDING Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
aastore
dup
iconst_1
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
aastore
dup
iconst_2
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
aastore
putstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/$VALUES [Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
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

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
ldc com/common/android/utils/concurrent/NdCacheAsyncTask$Status
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/concurrent/NdCacheAsyncTask$Status
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/$VALUES [Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
invokevirtual [Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
areturn
.limit locals 0
.limit stack 1
.end method
