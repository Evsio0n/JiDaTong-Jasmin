.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskCache

.field private static final 'APP_VERSION' I = 1


.field private static final 'TAG' Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final 'VALUE_COUNT' I = 1


.field private static 'wrapper' Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

.field private final 'directory' Ljava/io/File;

.field private 'diskLruCache' Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final 'maxSize' I

.field private final 'safeKeyGenerator' Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

.field private final 'writeLocker' Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

.method static <clinit>()V
aconst_null
putstatic com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/wrapper Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
return
.limit locals 0
.limit stack 1
.end method

.method protected <init>(Ljava/io/File;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker
dup
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/<init>()V
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/writeLocker Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
aload 0
aload 1
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/directory Ljava/io/File;
aload 0
iload 2
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/maxSize I
aload 0
new com/bumptech/glide/load/engine/cache/SafeKeyGenerator
dup
invokespecial com/bumptech/glide/load/engine/cache/SafeKeyGenerator/<init>()V
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/safeKeyGenerator Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
return
.limit locals 3
.limit stack 3
.end method

.method public static get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper
monitorenter
L0:
getstatic com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/wrapper Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
ifnonnull L1
new com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper
dup
aload 0
iload 1
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/<init>(Ljava/io/File;I)V
putstatic com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/wrapper Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
L1:
getstatic com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/wrapper Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
astore 0
L3:
ldc com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 4
.end method

.method private getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/diskLruCache Lcom/bumptech/glide/disklrucache/DiskLruCache;
ifnonnull L1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/directory Ljava/io/File;
iconst_1
iconst_1
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/maxSize I
i2l
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/diskLruCache Lcom/bumptech/glide/disklrucache/DiskLruCache;
L1:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/diskLruCache Lcom/bumptech/glide/disklrucache/DiskLruCache;
astore 1
L3:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 6
.end method

.method private resetDiskCache()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aconst_null
putfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/diskLruCache Lcom/bumptech/glide/disklrucache/DiskLruCache;
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public clear()V
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
aload 0
monitorenter
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/delete()V
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/resetDiskCache()V
L1:
aload 0
monitorexit
return
L2:
astore 1
L4:
ldc "DiskLruCacheWrapper"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "DiskLruCacheWrapper"
ldc "Unable to clear disk cache"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L5:
goto L1
L3:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/safeKeyGenerator Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/SafeKeyGenerator/getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
astore 1
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/remove(Ljava/lang/String;)Z
pop
L1:
return
L2:
astore 1
ldc "DiskLruCacheWrapper"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "DiskLruCacheWrapper"
ldc "Unable to delete from disk cache"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/safeKeyGenerator Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/SafeKeyGenerator/getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
astore 1
aconst_null
astore 2
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
astore 3
L1:
aload 2
astore 1
aload 3
ifnull L4
L3:
aload 3
iconst_0
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Value/getFile(I)Ljava/io/File;
astore 1
L4:
aload 1
areturn
L2:
astore 3
aload 2
astore 1
ldc "DiskLruCacheWrapper"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
ldc "DiskLruCacheWrapper"
ldc "Unable to get from disk cache"
aload 3
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L6
.catch java/io/IOException from L5 to L7 using L2
.catch all from L5 to L7 using L3
.catch java/io/IOException from L8 to L2 using L2
.catch all from L8 to L2 using L3
.catch all from L9 to L10 using L3
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/safeKeyGenerator Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/SafeKeyGenerator/getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
astore 3
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/writeLocker Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/acquire(Lcom/bumptech/glide/load/Key;)V
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
astore 3
L1:
aload 3
ifnull L7
L4:
aload 2
aload 3
iconst_0
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/getFile(I)Ljava/io/File;
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache$Writer/write(Ljava/io/File;)Z 1
ifeq L5
aload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/commit()V
L5:
aload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abortUnlessCommitted()V
L7:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/writeLocker Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/release(Lcom/bumptech/glide/load/Key;)V
return
L6:
astore 2
L8:
aload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abortUnlessCommitted()V
aload 2
athrow
L2:
astore 2
L9:
ldc "DiskLruCacheWrapper"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L10
ldc "DiskLruCacheWrapper"
ldc "Unable to put to disk cache"
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L10:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/writeLocker Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/release(Lcom/bumptech/glide/load/Key;)V
return
L3:
astore 2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskLruCacheWrapper/writeLocker Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
aload 1
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/release(Lcom/bumptech/glide/load/Key;)V
aload 2
athrow
.limit locals 4
.limit stack 3
.end method
