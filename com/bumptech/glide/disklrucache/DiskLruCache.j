.bytecode 50.0
.class public final synchronized com/bumptech/glide/disklrucache/DiskLruCache
.super java/lang/Object
.implements java/io/Closeable
.inner class inner com/bumptech/glide/disklrucache/DiskLruCache$1
.inner class public final Editor inner com/bumptech/glide/disklrucache/DiskLruCache$Editor outer com/bumptech/glide/disklrucache/DiskLruCache
.inner class private final Entry inner com/bumptech/glide/disklrucache/DiskLruCache$Entry outer com/bumptech/glide/disklrucache/DiskLruCache
.inner class public final Value inner com/bumptech/glide/disklrucache/DiskLruCache$Value outer com/bumptech/glide/disklrucache/DiskLruCache

.field static final 'ANY_SEQUENCE_NUMBER' J = -1L


.field private static final 'CLEAN' Ljava/lang/String; = "CLEAN"

.field private static final 'DIRTY' Ljava/lang/String; = "DIRTY"

.field static final 'JOURNAL_FILE' Ljava/lang/String; = "journal"

.field static final 'JOURNAL_FILE_BACKUP' Ljava/lang/String; = "journal.bkp"

.field static final 'JOURNAL_FILE_TEMP' Ljava/lang/String; = "journal.tmp"

.field static final 'MAGIC' Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final 'READ' Ljava/lang/String; = "READ"

.field private static final 'REMOVE' Ljava/lang/String; = "REMOVE"

.field static final 'VERSION_1' Ljava/lang/String; = "1"

.field private final 'appVersion' I

.field private final 'cleanupCallable' Ljava/util/concurrent/Callable; signature "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"

.field private final 'directory' Ljava/io/File;

.field final 'executorService' Ljava/util/concurrent/ThreadPoolExecutor;

.field private final 'journalFile' Ljava/io/File;

.field private final 'journalFileBackup' Ljava/io/File;

.field private final 'journalFileTmp' Ljava/io/File;

.field private 'journalWriter' Ljava/io/Writer;

.field private final 'lruEntries' Ljava/util/LinkedHashMap; signature "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"

.field private 'maxSize' J

.field private 'nextSequenceNumber' J

.field private 'redundantOpCount' I

.field private 'size' J

.field private final 'valueCount' I

.method private <init>(Ljava/io/File;IIJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 0
new java/util/LinkedHashMap
dup
iconst_0
ldc_w 0.75F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 0
lconst_0
putfield com/bumptech/glide/disklrucache/DiskLruCache/nextSequenceNumber J
aload 0
new java/util/concurrent/ThreadPoolExecutor
dup
iconst_0
iconst_1
ldc2_w 60L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
new java/util/concurrent/LinkedBlockingQueue
dup
invokespecial java/util/concurrent/LinkedBlockingQueue/<init>()V
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
new com/bumptech/glide/disklrucache/DiskLruCache$1
dup
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$1/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache/directory Ljava/io/File;
aload 0
iload 2
putfield com/bumptech/glide/disklrucache/DiskLruCache/appVersion I
aload 0
new java/io/File
dup
aload 1
ldc "journal"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
aload 0
new java/io/File
dup
aload 1
ldc "journal.tmp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileTmp Ljava/io/File;
aload 0
new java/io/File
dup
aload 1
ldc "journal.bkp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileBackup Ljava/io/File;
aload 0
iload 3
putfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
aload 0
lload 4
putfield com/bumptech/glide/disklrucache/DiskLruCache/maxSize J
return
.limit locals 6
.limit stack 10
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
.throws java/io/IOException
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/trimToSize()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
aload 1
lload 2
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
areturn
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
.throws java/io/IOException
aload 0
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/directory Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/journalRebuildRequired()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
.throws java/io/IOException
aload 0
aload 1
iload 2
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
.throws java/io/IOException
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/rebuildJournal()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
aload 0
iload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private checkNotClosed()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "cache is closed"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
.catch all from L7 to L8 using L1
.catch all from L9 to L10 using L1
.catch all from L11 to L12 using L1
.catch all from L13 to L14 using L1
.catch all from L15 to L16 using L1
.catch all from L16 to L17 using L1
.catch all from L17 to L18 using L1
.catch all from L19 to L20 using L1
aload 0
monitorenter
L0:
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Editor/access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
astore 8
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 1
if_acmpeq L21
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
astore 1
aload 0
monitorexit
aload 1
athrow
L21:
iload 2
ifeq L22
L2:
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
ifne L22
L3:
iconst_0
istore 3
L4:
iload 3
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
if_icmpge L22
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Editor/access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
iload 3
baload
ifne L5
aload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abort()V
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Newly created entry didn't create value for index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 8
iload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L23
aload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abort()V
L6:
aload 0
monitorexit
return
L23:
iload 3
iconst_1
iadd
istore 3
goto L4
L22:
iconst_0
istore 3
L7:
iload 3
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
if_icmpge L13
aload 8
iload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
astore 1
L8:
iload 2
ifeq L11
L9:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L24
aload 8
iload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
astore 9
aload 1
aload 9
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
iload 3
laload
lstore 4
aload 9
invokevirtual java/io/File/length()J
lstore 6
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
iload 3
lload 6
lastore
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
lload 4
lsub
lload 6
ladd
putfield com/bumptech/glide/disklrucache/DiskLruCache/size J
L10:
goto L24
L11:
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/deleteIfExists(Ljava/io/File;)V
L12:
goto L24
L13:
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
aload 8
aconst_null
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
pop
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
iload 2
ior
ifeq L19
aload 8
iconst_1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ldc "CLEAN"
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 32
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 8
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getLengths()Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 10
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
L14:
iload 2
ifeq L16
L15:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/nextSequenceNumber J
lstore 4
aload 0
lconst_1
lload 4
ladd
putfield com/bumptech/glide/disklrucache/DiskLruCache/nextSequenceNumber J
aload 8
lload 4
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1202(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J
pop2
L16:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/maxSize J
lcmp
ifgt L17
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/journalRebuildRequired()Z
ifeq L6
L17:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L18:
goto L6
L19:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ldc "REMOVE"
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 32
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 10
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
L20:
goto L16
L24:
iload 3
iconst_1
iadd
istore 3
goto L7
.limit locals 10
.limit stack 5
.end method

.method private static deleteIfExists(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/delete()Z
ifne L0
new java/io/IOException
dup
invokespecial java/io/IOException/<init>()V
athrow
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aconst_null
astore 7
aload 0
monitorenter
L0:
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/checkNotClosed()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 8
L1:
lload 2
ldc2_w -1L
lcmp
ifeq L10
aload 7
astore 6
aload 8
ifnull L11
L3:
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
lstore 4
L4:
lload 4
lload 2
lcmp
ifeq L10
aload 7
astore 6
L11:
aload 0
monitorexit
aload 6
areturn
L10:
aload 8
ifnonnull L8
L5:
new com/bumptech/glide/disklrucache/DiskLruCache$Entry
dup
aload 0
aload 1
aconst_null
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
astore 6
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
aload 6
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L6:
new com/bumptech/glide/disklrucache/DiskLruCache$Editor
dup
aload 0
aload 6
aconst_null
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Editor/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
astore 7
aload 6
aload 7
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ldc "DIRTY"
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 32
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 1
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 10
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
L7:
aload 7
astore 6
goto L11
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L8:
aload 8
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
astore 9
L9:
aload 8
astore 6
aload 9
ifnull L6
aload 7
astore 6
goto L11
.limit locals 10
.limit stack 5
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
.throws java/io/IOException
new java/io/InputStreamReader
dup
aload 0
getstatic com/bumptech/glide/disklrucache/Util/UTF_8 Ljava/nio/charset/Charset;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invokestatic com/bumptech/glide/disklrucache/Util/readFully(Ljava/io/Reader;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method private journalRebuildRequired()Z
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
sipush 2000
if_icmplt L0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/size()I
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
lload 3
lconst_0
lcmp
ifgt L3
new java/lang/IllegalArgumentException
dup
ldc "maxSize <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 2
ifgt L4
new java/lang/IllegalArgumentException
dup
ldc "valueCount <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
new java/io/File
dup
aload 0
ldc "journal.bkp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 5
aload 5
invokevirtual java/io/File/exists()Z
ifeq L5
new java/io/File
dup
aload 0
ldc "journal"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifeq L6
aload 5
invokevirtual java/io/File/delete()Z
pop
L5:
new com/bumptech/glide/disklrucache/DiskLruCache
dup
aload 0
iload 1
iload 2
lload 3
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/<init>(Ljava/io/File;IIJ)V
astore 5
aload 5
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L7
L0:
aload 5
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/readJournal()V
aload 5
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/processJournal()V
L1:
aload 5
areturn
L6:
aload 5
aload 6
iconst_0
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
goto L5
L2:
astore 6
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "DiskLruCache "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " is corrupt: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", removing"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 5
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/delete()V
L7:
aload 0
invokevirtual java/io/File/mkdirs()Z
pop
new com/bumptech/glide/disklrucache/DiskLruCache
dup
aload 0
iload 1
iload 2
lload 3
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/<init>(Ljava/io/File;IIJ)V
astore 0
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/rebuildJournal()V
aload 0
areturn
.limit locals 7
.limit stack 7
.end method

.method private processJournal()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileTmp Ljava/io/File;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/deleteIfExists(Ljava/io/File;)V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 3
aload 3
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
ifnonnull L2
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
if_icmpge L0
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 3
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
iload 1
laload
ladd
putfield com/bumptech/glide/disklrucache/DiskLruCache/size J
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
aconst_null
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
pop
iconst_0
istore 1
L4:
iload 1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
if_icmpge L5
aload 3
iload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/deleteIfExists(Ljava/io/File;)V
aload 3
iload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/deleteIfExists(Ljava/io/File;)V
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L0
L1:
return
.limit locals 4
.limit stack 5
.end method

.method private readJournal()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L2 using L2
.catch java/io/EOFException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
new com/bumptech/glide/disklrucache/StrictLineReader
dup
new java/io/FileInputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
getstatic com/bumptech/glide/disklrucache/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial com/bumptech/glide/disklrucache/StrictLineReader/<init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
astore 2
L0:
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
astore 3
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
astore 4
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
astore 5
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
astore 6
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
astore 7
ldc "libcore.io.DiskLruCache"
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc "1"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/appVersion I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc ""
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L10
L1:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unexpected journal header: ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 3
aload 2
invokestatic com/bumptech/glide/disklrucache/Util/closeQuietly(Ljava/io/Closeable;)V
aload 3
athrow
L10:
iconst_0
istore 1
L3:
aload 0
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/readLine()Ljava/lang/String;
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/readJournalLine(Ljava/lang/String;)V
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L5:
astore 3
L6:
aload 0
iload 1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/size()I
isub
putfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
aload 2
invokevirtual com/bumptech/glide/disklrucache/StrictLineReader/hasUnterminatedLine()Z
ifeq L8
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/rebuildJournal()V
L7:
aload 2
invokestatic com/bumptech/glide/disklrucache/Util/closeQuietly(Ljava/io/Closeable;)V
return
L8:
aload 0
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
getstatic com/bumptech/glide/disklrucache/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
L9:
goto L7
.limit locals 8
.limit stack 9
.end method

.method private readJournalLine(Ljava/lang/String;)V
.throws java/io/IOException
aload 1
bipush 32
invokevirtual java/lang/String/indexOf(I)I
istore 2
iload 2
iconst_m1
if_icmpne L0
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unexpected journal line: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 2
iconst_1
iadd
istore 3
aload 1
bipush 32
iload 3
invokevirtual java/lang/String/indexOf(II)I
istore 4
iload 4
iconst_m1
if_icmpne L1
aload 1
iload 3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 6
aload 6
astore 5
iload 2
ldc "REMOVE"
invokevirtual java/lang/String/length()I
if_icmpne L2
aload 6
astore 5
aload 1
ldc "REMOVE"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 6
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
return
L1:
aload 1
iload 3
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 5
L2:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 5
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 7
aload 7
astore 6
aload 7
ifnonnull L4
new com/bumptech/glide/disklrucache/DiskLruCache$Entry
dup
aload 0
aload 5
aconst_null
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
astore 6
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 5
aload 6
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
iload 4
iconst_m1
if_icmpeq L5
iload 2
ldc "CLEAN"
invokevirtual java/lang/String/length()I
if_icmpne L5
aload 1
ldc "CLEAN"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L5
aload 1
iload 4
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
ldc " "
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 6
iconst_1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
pop
aload 6
aconst_null
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
pop
aload 6
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
return
L5:
iload 4
iconst_m1
if_icmpne L6
iload 2
ldc "DIRTY"
invokevirtual java/lang/String/length()I
if_icmpne L6
aload 1
ldc "DIRTY"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L6
aload 6
new com/bumptech/glide/disklrucache/DiskLruCache$Editor
dup
aload 0
aload 6
aconst_null
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Editor/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
pop
return
L6:
iload 4
iconst_m1
if_icmpne L7
iload 2
ldc "READ"
invokevirtual java/lang/String/length()I
if_icmpne L7
aload 1
ldc "READ"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L3
L7:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unexpected journal line: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 8
.limit stack 6
.end method

.method private rebuildJournal()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L5
.catch all from L4 to L6 using L5
.catch all from L7 to L2 using L2
.catch all from L8 to L9 using L5
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ifnull L1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/close()V
L1:
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileTmp Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
getstatic com/bumptech/glide/disklrucache/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
astore 1
L3:
aload 1
ldc "libcore.io.DiskLruCache"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "1"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/appVersion I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 1
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 3
aload 3
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
ifnull L8
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "DIRTY "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L6:
goto L4
L5:
astore 2
L7:
aload 1
invokevirtual java/io/Writer/close()V
aload 2
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L8:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CLEAN "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getLengths()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L9:
goto L4
L10:
aload 1
invokevirtual java/io/Writer/close()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L11
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileBackup Ljava/io/File;
iconst_1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
L11:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileTmp Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
iconst_0
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFileBackup Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
aload 0
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalFile Ljava/io/File;
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
getstatic com/bumptech/glide/disklrucache/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
L12:
aload 0
monitorexit
return
.limit locals 4
.limit stack 9
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
.throws java/io/IOException
iload 2
ifeq L0
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/deleteIfExists(Ljava/io/File;)V
L0:
aload 0
aload 1
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L1
new java/io/IOException
dup
invokespecial java/io/IOException/<init>()V
athrow
L1:
return
.limit locals 3
.limit stack 2
.end method

.method private trimToSize()V
.throws java/io/IOException
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/maxSize J
lcmp
ifle L1
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/remove(Ljava/lang/String;)Z
pop
goto L0
L1:
return
.limit locals 1
.limit stack 4
.end method

.method public close()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
astore 1
L1:
aload 1
ifnonnull L3
L8:
aload 0
monitorexit
return
L3:
new java/util/ArrayList
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 2
aload 2
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
ifnull L4
aload 2
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abort()V
L5:
goto L4
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/trimToSize()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/close()V
aload 0
aconst_null
putfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
L7:
goto L8
.limit locals 3
.limit stack 3
.end method

.method public delete()V
.throws java/io/IOException
aload 0
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache/close()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/directory Ljava/io/File;
invokestatic com/bumptech/glide/disklrucache/Util/deleteContents(Ljava/io/File;)V
return
.limit locals 1
.limit stack 1
.end method

.method public edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
aload 1
ldc2_w -1L
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
areturn
.limit locals 2
.limit stack 4
.end method

.method public flush()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/checkNotClosed()V
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/trimToSize()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
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
.limit stack 1
.end method

.method public get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
aconst_null
astore 5
aload 0
monitorenter
L0:
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/checkNotClosed()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 6
L1:
aload 6
ifnonnull L10
aload 5
astore 4
L11:
aload 0
monitorexit
aload 4
areturn
L10:
aload 5
astore 4
L3:
aload 6
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
ifeq L11
aload 6
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/cleanFiles [Ljava/io/File;
astore 7
aload 7
arraylength
istore 3
L4:
iconst_0
istore 2
L12:
iload 2
iload 3
if_icmpge L7
aload 5
astore 4
L5:
aload 7
iload 2
aaload
invokevirtual java/io/File/exists()Z
ifeq L11
L6:
iload 2
iconst_1
iadd
istore 2
goto L12
L7:
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ldc "READ"
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 32
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 1
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 10
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/journalRebuildRequired()Z
ifeq L8
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L8:
new com/bumptech/glide/disklrucache/DiskLruCache$Value
dup
aload 0
aload 1
aload 6
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
aload 6
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/cleanFiles [Ljava/io/File;
aload 6
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
aconst_null
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Value/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
astore 4
L9:
goto L11
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 8
.limit stack 9
.end method

.method public getDirectory()Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/directory Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxSize()J
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/maxSize J
lstore 1
L1:
aload 0
monitorexit
lload 1
lreturn
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 2
.end method

.method public isClosed()Z
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
astore 2
L1:
aload 2
ifnonnull L3
iconst_1
istore 1
L4:
aload 0
monitorexit
iload 1
ireturn
L3:
iconst_0
istore 1
goto L4
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public remove(Ljava/lang/String;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L2 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/checkNotClosed()V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/disklrucache/DiskLruCache$Entry
astore 4
L1:
aload 4
ifnull L10
L3:
aload 4
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
astore 5
L4:
aload 5
ifnull L11
L10:
iconst_0
istore 3
L12:
aload 0
monitorexit
iload 3
ireturn
L11:
iconst_0
istore 2
L5:
iload 2
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/valueCount I
if_icmpge L8
aload 4
iload 2
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
astore 5
aload 5
invokevirtual java/io/File/exists()Z
ifeq L6
aload 5
invokevirtual java/io/File/delete()Z
ifne L6
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "failed to delete "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 4
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
iload 2
laload
lsub
putfield com/bumptech/glide/disklrucache/DiskLruCache/size J
aload 4
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
iload 2
lconst_0
lastore
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L8:
aload 0
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/bumptech/glide/disklrucache/DiskLruCache/redundantOpCount I
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
ldc "REMOVE"
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 32
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
aload 1
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/journalWriter Ljava/io/Writer;
bipush 10
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
invokespecial com/bumptech/glide/disklrucache/DiskLruCache/journalRebuildRequired()Z
ifeq L9
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L9:
iconst_1
istore 3
goto L12
.limit locals 6
.limit stack 5
.end method

.method public setMaxSize(J)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
lload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache/maxSize J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L1:
aload 0
monitorexit
return
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 3
.end method

.method public size()J
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache/size J
lstore 1
L1:
aload 0
monitorexit
lload 1
lreturn
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 2
.end method
