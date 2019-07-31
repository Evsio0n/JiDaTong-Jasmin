.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor
.super java/lang/Object
.inner class public final Editor inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class private FaultHidingOutputStream inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor

.field private 'committed' Z

.field private final 'entry' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

.field private 'hasErrors' Z

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field private final 'written' [Z

.method private <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
ifeq L0
aconst_null
astore 1
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/written [Z
return
L0:
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I
newarray boolean
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/hasErrors Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/written [Z
areturn
.limit locals 1
.limit stack 1
.end method

.method public abort()V
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
iconst_0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$11(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 1
.limit stack 3
.end method

.method public abortUnlessCommitted()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/committed Z
ifne L1
L0:
aload 0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/hasErrors Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
iconst_0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$11(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/remove(Ljava/lang/String;)Z
pop
L1:
aload 0
iconst_1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/committed Z
return
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$11(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
goto L1
.limit locals 1
.limit stack 3
.end method

.method public getString(I)Ljava/lang/String;
.throws java/io/IOException
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/newInputStream(I)Ljava/io/InputStream;
astore 2
aload 2
ifnull L0
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$7(Ljava/io/InputStream;)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public newInputStream(I)Ljava/io/InputStream;
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch java/io/FileNotFoundException from L6 to L7 using L8
.catch all from L6 to L7 using L1
.catch all from L7 to L9 using L1
.catch all from L10 to L11 using L1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getCleanFile(I)Ljava/io/File;
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

.method public newOutputStream(I)Ljava/io/OutputStream;
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
.catch java/io/FileNotFoundException from L6 to L7 using L8
.catch all from L6 to L7 using L1
.catch all from L7 to L9 using L1
.catch all from L10 to L11 using L1
.catch java/io/FileNotFoundException from L11 to L12 using L13
.catch all from L11 to L12 using L1
.catch all from L14 to L15 using L1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
aload 0
if_acmpeq L4
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
astore 2
L2:
aload 3
monitorexit
L3:
aload 2
athrow
L4:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
ifne L5
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/written [Z
iload 1
iconst_1
bastore
L5:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/entry Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/getDirtyFile(I)Ljava/io/File;
astore 4
L6:
new java/io/FileOutputStream
dup
aload 4
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L7:
new com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream
dup
aload 0
aload 2
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;)V
astore 2
aload 3
monitorexit
L9:
aload 2
areturn
L8:
astore 2
L10:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L11:
new java/io/FileOutputStream
dup
aload 4
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L12:
goto L7
L13:
astore 2
L14:
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$10()Ljava/io/OutputStream;
astore 2
aload 3
monitorexit
L15:
aload 2
areturn
.limit locals 5
.limit stack 5
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
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/newOutputStream(I)Ljava/io/OutputStream;
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/UTF_8 Ljava/nio/charset/Charset;
invokespecial java/io/OutputStreamWriter/<init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
astore 3
L1:
aload 3
aload 2
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L3:
aload 3
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
return
L2:
astore 3
aload 4
astore 2
L5:
aload 2
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
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
.limit stack 4
.end method
