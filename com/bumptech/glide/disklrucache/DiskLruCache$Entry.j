.bytecode 50.0
.class final synchronized com/bumptech/glide/disklrucache/DiskLruCache$Entry
.super java/lang/Object
.inner class private final Entry inner com/bumptech/glide/disklrucache/DiskLruCache$Entry outer com/bumptech/glide/disklrucache/DiskLruCache

.field 'cleanFiles' [Ljava/io/File;

.field private 'currentEditor' Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

.field 'dirtyFiles' [Ljava/io/File;

.field private final 'key' Ljava/lang/String;

.field private final 'lengths' [J

.field private 'readable' Z

.field private 'sequenceNumber' J

.field final synthetic 'this$0' Lcom/bumptech/glide/disklrucache/DiskLruCache;

.method private <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/key Ljava/lang/String;
aload 0
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
newarray long
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/lengths [J
aload 0
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
anewarray java/io/File
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/cleanFiles [Ljava/io/File;
aload 0
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
anewarray java/io/File
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/dirtyFiles [Ljava/io/File;
new java/lang/StringBuilder
dup
aload 2
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 46
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 2
invokevirtual java/lang/StringBuilder/length()I
istore 4
iconst_0
istore 3
L0:
iload 3
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
if_icmpge L1
aload 2
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/cleanFiles [Ljava/io/File;
iload 3
new java/io/File
dup
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
aastore
aload 2
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/dirtyFiles [Ljava/io/File;
iload 3
new java/io/File
dup
aload 1
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
aastore
aload 2
iload 4
invokevirtual java/lang/StringBuilder/setLength(I)V
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
return
.limit locals 5
.limit stack 6
.end method

.method synthetic <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/lengths [J
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/sequenceNumber J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1202(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J
aload 0
lload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/sequenceNumber J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/readable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
aload 0
iload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/readable Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/currentEditor Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/currentEditor Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
.throws java/io/IOException
aload 0
aload 1
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/setLengths([Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
.throws java/io/IOException
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unexpected journal line: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method private setLengths([Ljava/lang/String;)V
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 1
arraylength
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
if_icmpeq L3
aload 0
aload 1
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
athrow
L3:
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmpge L4
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/lengths [J
iload 2
aload 1
iload 2
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lastore
L1:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
astore 3
aload 0
aload 1
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Entry/invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
athrow
L4:
return
.limit locals 4
.limit stack 4
.end method

.method public getCleanFile(I)Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/cleanFiles [Ljava/io/File;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDirtyFile(I)Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/dirtyFiles [Ljava/io/File;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLengths()Ljava/lang/String;
.throws java/io/IOException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Entry/lengths [J
astore 6
aload 6
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 6
iload 1
laload
lstore 3
aload 5
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 7
.limit stack 3
.end method
