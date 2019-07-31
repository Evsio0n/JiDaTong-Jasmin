.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.super java/lang/Object
.implements java/io/Closeable
.inner class inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1
.inner class inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$2
.inner class public final Editor inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class private FaultHidingOutputStream inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class private final Entry inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class public final Snapshot inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache

.field static final 'ANY_SEQUENCE_NUMBER' J = -1L


.field private static final 'CLEAN' Ljava/lang/String; = "CLEAN"

.field private static final 'DIRTY' Ljava/lang/String; = "DIRTY"

.field static final 'JOURNAL_FILE' Ljava/lang/String; = "journal"

.field static final 'JOURNAL_FILE_BACKUP' Ljava/lang/String; = "journal.bkp"

.field static final 'JOURNAL_FILE_TEMP' Ljava/lang/String; = "journal.tmp"

.field static final 'LEGAL_KEY_PATTERN' Ljava/util/regex/Pattern;

.field static final 'MAGIC' Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final 'NULL_OUTPUT_STREAM' Ljava/io/OutputStream;

.field private static final 'READ' Ljava/lang/String; = "READ"

.field private static final 'REMOVE' Ljava/lang/String; = "REMOVE"

.field static final 'VERSION_1' Ljava/lang/String; = "1"

.field private final 'appVersion' I

.field private final 'cleanupCallable' Ljava/util/concurrent/Callable; signature "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"

.field private final 'directory' Ljava/io/File;

.field final 'executorService' Ljava/util/concurrent/ThreadPoolExecutor;

.field private 'fileCount' I

.field private final 'journalFile' Ljava/io/File;

.field private final 'journalFileBackup' Ljava/io/File;

.field private final 'journalFileTmp' Ljava/io/File;

.field private 'journalWriter' Ljava/io/Writer;

.field private final 'lruEntries' Ljava/util/LinkedHashMap; signature "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"

.field private 'maxFileCount' I

.field private 'maxSize' J

.field private 'nextSequenceNumber' J

.field private 'redundantOpCount' I

.field private 'size' J

.field private final 'valueCount' I

.method static <clinit>()V
ldc "[a-z0-9_-]{1,64}"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/LEGAL_KEY_PATTERN Ljava/util/regex/Pattern;
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$2
dup
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$2/<init>()V
putstatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/NULL_OUTPUT_STREAM Ljava/io/OutputStream;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Ljava/io/File;IIJI)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
iconst_0
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
aload 0
new java/util/LinkedHashMap
dup
iconst_0
ldc_w 0.75F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 0
lconst_0
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/nextSequenceNumber J
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
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1
dup
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/directory Ljava/io/File;
aload 0
iload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/appVersion I
aload 0
new java/io/File
dup
aload 1
ldc "journal"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
aload 0
new java/io/File
dup
aload 1
ldc "journal.tmp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileTmp Ljava/io/File;
aload 0
new java/io/File
dup
aload 1
ldc "journal.bkp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileBackup Ljava/io/File;
aload 0
iload 3
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
aload 0
lload 4
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxSize J
aload 0
iload 6
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxFileCount I
return
.limit locals 7
.limit stack 10
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
.throws java/io/IOException
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToSize()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10()Ljava/io/OutputStream;
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/NULL_OUTPUT_STREAM Ljava/io/OutputStream;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$11(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
.throws java/io/IOException
aload 0
aload 1
iload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/completeEdit(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
.throws java/io/IOException
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToFileCount()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Z
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalRebuildRequired()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
.throws java/io/IOException
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/rebuildJournal()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;I)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$6(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
aload 1
lload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/edit(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
areturn
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$7(Ljava/io/InputStream;)Ljava/lang/String;
.throws java/io/IOException
aload 0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/directory Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkNotClosed()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
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

.method private completeEdit(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L6 to L7 using L1
.catch all from L8 to L9 using L1
.catch all from L9 to L10 using L1
.catch all from L10 to L11 using L1
.catch all from L12 to L13 using L1
.catch all from L13 to L14 using L1
.catch all from L15 to L16 using L1
.catch all from L17 to L18 using L1
.catch all from L19 to L20 using L1
.catch all from L21 to L22 using L1
aload 0
monitorenter
L0:
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
astore 8
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
aload 1
if_acmpeq L23
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
L23:
iload 2
ifeq L24
L2:
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
ifne L24
L3:
iconst_0
istore 3
L4:
iload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmplt L12
L5:
goto L24
L6:
iload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmplt L15
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
aload 8
aconst_null
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
iload 2
ior
ifeq L21
aload 8
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$4(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
new java/lang/StringBuilder
dup
ldc "CLEAN "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getLengths()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L7:
iload 2
ifeq L9
L8:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/nextSequenceNumber J
lstore 4
aload 0
lconst_1
lload 4
ladd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/nextSequenceNumber J
aload 8
lload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)V
L9:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxSize J
lcmp
ifgt L10
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxFileCount I
if_icmpgt L10
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalRebuildRequired()Z
ifeq L11
L10:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L11:
aload 0
monitorexit
return
L12:
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$3(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z
iload 3
baload
ifne L13
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
ldc "Newly created entry didn't create value for index "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L13:
aload 8
iload 3
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L25
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
L14:
goto L11
L15:
aload 8
iload 3
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
astore 1
L16:
iload 2
ifeq L19
L17:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L26
aload 8
iload 3
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
astore 9
aload 1
aload 9
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
iload 3
laload
lstore 4
aload 9
invokevirtual java/io/File/length()J
lstore 6
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
iload 3
lload 6
lastore
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
lload 4
lsub
lload 6
ladd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
L18:
goto L26
L19:
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/deleteIfExists(Ljava/io/File;)V
L20:
goto L26
L21:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
new java/lang/StringBuilder
dup
ldc "REMOVE "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L22:
goto L9
L24:
iconst_0
istore 3
goto L6
L25:
iload 3
iconst_1
iadd
istore 3
goto L4
L26:
iload 3
iconst_1
iadd
istore 3
goto L6
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

.method private edit(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
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
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/checkNotClosed()V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/validateKey(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
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
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
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
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
dup
aload 0
aload 1
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
astore 6
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
aload 6
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L6:
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor
dup
aload 0
aload 6
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
astore 7
aload 6
aload 7
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
new java/lang/StringBuilder
dup
ldc "DIRTY "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
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
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
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
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/UTF_8 Ljava/nio/charset/Charset;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/readFully(Ljava/io/Reader;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method private journalRebuildRequired()Z
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
sipush 2000
if_icmplt L0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
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

.method public static open(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
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
iload 5
ifgt L4
new java/lang/IllegalArgumentException
dup
ldc "maxFileCount <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
iload 2
ifgt L5
new java/lang/IllegalArgumentException
dup
ldc "valueCount <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L5:
new java/io/File
dup
aload 0
ldc "journal.bkp"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifeq L6
new java/io/File
dup
aload 0
ldc "journal"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 7
aload 7
invokevirtual java/io/File/exists()Z
ifeq L7
aload 6
invokevirtual java/io/File/delete()Z
pop
L6:
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
dup
aload 0
iload 1
iload 2
lload 3
iload 5
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/<init>(Ljava/io/File;IIJI)V
astore 6
aload 6
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L8
L0:
aload 6
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/readJournal()V
aload 6
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/processJournal()V
aload 6
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 6
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
L1:
aload 6
areturn
L7:
aload 6
aload 7
iconst_0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
goto L6
L2:
astore 7
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
ldc "DiskLruCache "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " is corrupt: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", removing"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 6
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/delete()V
L8:
aload 0
invokevirtual java/io/File/mkdirs()Z
pop
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
dup
aload 0
iload 1
iload 2
lload 3
iload 5
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/<init>(Ljava/io/File;IIJI)V
astore 0
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/rebuildJournal()V
aload 0
areturn
.limit locals 8
.limit stack 9
.end method

.method private processJournal()V
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileTmp Ljava/io/File;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/deleteIfExists(Ljava/io/File;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 3
aload 3
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
ifnonnull L2
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmpge L0
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 3
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
iload 1
laload
ladd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
aconst_null
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
iconst_0
istore 1
L4:
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmplt L5
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L0
L5:
aload 3
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/deleteIfExists(Ljava/io/File;)V
aload 3
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/deleteIfExists(Ljava/io/File;)V
iload 1
iconst_1
iadd
istore 1
goto L4
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
new com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader
dup
new java/io/FileInputStream
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/<init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
astore 2
L0:
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
astore 3
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
astore 4
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
astore 5
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
astore 6
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/appVersion I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc ""
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L8
L1:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "unexpected journal header: ["
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
aload 3
athrow
L8:
iconst_0
istore 1
L3:
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/readLine()Ljava/lang/String;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/readJournalLine(Ljava/lang/String;)V
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/size()I
isub
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
L7:
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
return
.limit locals 8
.limit stack 5
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
ldc "unexpected journal line: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 5
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 7
aload 7
astore 6
aload 7
ifnonnull L4
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
dup
aload 0
aload 5
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
astore 6
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
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
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$4(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)V
aload 6
aconst_null
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
aload 6
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$6(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V
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
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor
dup
aload 0
aload 6
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
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
ldc "unexpected journal line: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L5
.catch all from L12 to L2 using L2
.catch all from L13 to L14 using L5
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
ifnull L1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/close()V
L1:
new java/io/BufferedWriter
dup
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileTmp Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
astore 2
L3:
aload 2
ldc "libcore.io.DiskLruCache"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "1"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/appVersion I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 2
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
istore 1
L6:
iload 1
ifne L10
L7:
aload 2
invokevirtual java/io/Writer/close()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L8
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileBackup Ljava/io/File;
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
L8:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileTmp Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
iconst_0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/renameTo(Ljava/io/File;Ljava/io/File;Z)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFileBackup Ljava/io/File;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalFile Ljava/io/File;
iconst_1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;Z)V
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/US_ASCII Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
L9:
aload 0
monitorexit
return
L10:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 4
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
ifnull L13
aload 2
new java/lang/StringBuilder
dup
ldc "DIRTY "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L11:
goto L4
L5:
astore 3
L12:
aload 2
invokevirtual java/io/Writer/close()V
aload 3
athrow
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
L13:
aload 2
new java/lang/StringBuilder
dup
ldc "CLEAN "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getLengths()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L14:
goto L4
.limit locals 5
.limit stack 9
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
.throws java/io/IOException
iload 2
ifeq L0
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/deleteIfExists(Ljava/io/File;)V
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

.method private trimToFileCount()V
.throws java/io/IOException
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxFileCount I
if_icmpgt L1
return
L1:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/remove(Ljava/lang/String;)Z
pop
goto L0
.limit locals 1
.limit stack 2
.end method

.method private trimToSize()V
.throws java/io/IOException
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxSize J
lcmp
ifgt L1
return
L1:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/remove(Ljava/lang/String;)Z
pop
goto L0
.limit locals 1
.limit stack 4
.end method

.method private validateKey(Ljava/lang/String;)V
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/LEGAL_KEY_PATTERN Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "keys must match regex [a-z0-9_-]{1,64}: \""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 5
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/values()Ljava/util/Collection;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L6
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToSize()V
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToFileCount()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
invokevirtual java/io/Writer/close()V
aload 0
aconst_null
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
L5:
goto L8
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 2
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
ifnull L4
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
L7:
goto L4
.limit locals 3
.limit stack 3
.end method

.method public delete()V
.throws java/io/IOException
aload 0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/close()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/directory Ljava/io/File;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/deleteContents(Ljava/io/File;)V
return
.limit locals 1
.limit stack 1
.end method

.method public edit(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
aload 1
ldc2_w -1L
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/edit(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
areturn
.limit locals 2
.limit stack 4
.end method

.method public fileCount()J
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
istore 1
L1:
iload 1
i2l
lstore 2
aload 0
monitorexit
lload 2
lreturn
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
.limit locals 5
.limit stack 2
.end method

.method public flush()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/checkNotClosed()V
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToSize()V
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/trimToFileCount()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
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

.method public get(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch java/io/FileNotFoundException from L5 to L6 using L7
.catch all from L5 to L6 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch java/io/FileNotFoundException from L11 to L12 using L7
.catch all from L11 to L12 using L2
.catch java/io/FileNotFoundException from L13 to L14 using L7
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
aconst_null
astore 5
aload 0
monitorenter
L0:
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/checkNotClosed()V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/validateKey(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 7
L1:
aload 7
ifnonnull L19
aload 5
astore 4
L20:
aload 0
monitorexit
aload 4
areturn
L19:
aload 5
astore 4
L3:
aload 7
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
ifeq L20
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
anewarray java/io/File
astore 4
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
anewarray java/io/InputStream
astore 6
L4:
iconst_0
istore 2
L5:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
istore 3
L6:
iload 2
iload 3
if_icmplt L11
L8:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
new java/lang/StringBuilder
dup
ldc "READ "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalRebuildRequired()Z
ifeq L9
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L9:
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot
dup
aload 0
aload 1
aload 7
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
aload 4
aload 6
aload 7
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;)V
astore 4
L10:
goto L20
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L11:
aload 7
iload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
astore 8
L12:
aload 4
iload 2
aload 8
aastore
L13:
aload 6
iload 2
new java/io/FileInputStream
dup
aload 8
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
aastore
L14:
iload 2
iconst_1
iadd
istore 2
goto L5
L7:
astore 1
iconst_0
istore 2
L21:
aload 5
astore 4
L15:
iload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmpge L20
L16:
aload 5
astore 4
aload 6
iload 2
aaload
ifnull L20
L17:
aload 6
iload 2
aaload
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
L18:
iload 2
iconst_1
iadd
istore 2
goto L21
.limit locals 9
.limit stack 10
.end method

.method public getDirectory()Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/directory Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxFileCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxFileCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public getMaxSize()J
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxSize J
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
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
.catch all from L5 to L6 using L2
.catch all from L7 to L2 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/checkNotClosed()V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/validateKey(Ljava/lang/String;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
astore 4
L1:
aload 4
ifnull L10
L3:
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/valueCount I
if_icmplt L7
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/redundantOpCount I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalWriter Ljava/io/Writer;
new java/lang/StringBuilder
dup
ldc "REMOVE "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 10
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/lruEntries Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/journalRebuildRequired()Z
ifeq L13
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
invokevirtual java/util/concurrent/ThreadPoolExecutor/submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
pop
L6:
goto L13
L7:
aload 4
iload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
astore 5
aload 5
invokevirtual java/io/File/exists()Z
ifeq L8
aload 5
invokevirtual java/io/File/delete()Z
ifne L8
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "failed to delete "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
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
L8:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
iload 2
laload
lsub
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
iconst_1
isub
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/fileCount I
aload 4
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
iload 2
lconst_0
lastore
L9:
iload 2
iconst_1
iadd
istore 2
goto L5
L13:
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
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/maxSize J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/executorService Ljava/util/concurrent/ThreadPoolExecutor;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/cleanupCallable Ljava/util/concurrent/Callable;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/size J
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
