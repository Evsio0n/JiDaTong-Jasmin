.bytecode 50.0
.class public final synchronized com/bumptech/glide/disklrucache/DiskLruCache$Editor
.super java/lang/Object
.inner class public final Editor inner com/bumptech/glide/disklrucache/DiskLruCache$Editor outer com/bumptech/glide/disklrucache/DiskLruCache

.field private 'committed' Z

.field private final 'entry' Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

.field final synthetic 'this$0' Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final 'written' [Z

.method private <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
aload 2
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
ifeq L0
aconst_null
astore 1
L1:
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/written [Z
return
L0:
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
newarray boolean
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Editor/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/written [Z
areturn
.limit locals 1
.limit stack 1
.end method

.method private newInputStream(I)Ljava/io/InputStream;
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch java/io/FileNotFoundException from L6 to L7 using L8
.catch all from L6 to L7 using L1
.catch all from L7 to L9 using L1
.catch all from L10 to L11 using L1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 0
if_acmpeq L4
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
astore 3
L2:
aload 2
monitorexit
L3:
aload 3
athrow
L4:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
ifne L6
aload 2
monitorexit
L5:
aconst_null
areturn
L6:
new java/io/FileInputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
iload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 3
L7:
aload 2
monitorexit
L9:
aload 3
areturn
L8:
astore 3
L10:
aload 2
monitorexit
L11:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public abort()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
iconst_0
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
return
.limit locals 1
.limit stack 3
.end method

.method public abortUnlessCommitted()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/committed Z
ifne L1
L0:
aload 0
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/abort()V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 1
.end method

.method public commit()V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
iconst_1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
aload 0
iconst_1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/committed Z
return
.limit locals 1
.limit stack 3
.end method

.method public getFile(I)Ljava/io/File;
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 0
if_acmpeq L4
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
astore 3
L2:
aload 2
monitorexit
L3:
aload 3
athrow
L4:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache$Entry/access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
ifne L5
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/written [Z
iload 1
iconst_1
bastore
L5:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/entry Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
iload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
astore 3
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L6
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Editor/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L6:
aload 2
monitorexit
L7:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getString(I)Ljava/lang/String;
.throws java/io/IOException
aload 0
iload 1
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Editor/newInputStream(I)Ljava/io/InputStream;
astore 2
aload 2
ifnull L0
aload 2
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1700(Ljava/io/InputStream;)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public set(ILjava/lang/String;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
aconst_null
astore 4
L0:
new java/io/OutputStreamWriter
dup
new java/io/FileOutputStream
dup
aload 0
iload 1
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$Editor/getFile(I)Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
getstatic com/bumptech/glide/disklrucache/Util/UTF_8 Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
astore 3
L1:
aload 3
aload 2
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L3:
aload 3
invokestatic com/bumptech/glide/disklrucache/Util/closeQuietly(Ljava/io/Closeable;)V
return
L2:
astore 3
aload 4
astore 2
L5:
aload 2
invokestatic com/bumptech/glide/disklrucache/Util/closeQuietly(Ljava/io/Closeable;)V
aload 3
athrow
L4:
astore 4
aload 3
astore 2
aload 4
astore 3
goto L5
.limit locals 5
.limit stack 6
.end method
