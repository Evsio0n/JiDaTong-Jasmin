.bytecode 50.0
.class final synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry
.super java/lang/Object
.inner class private final Entry inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache

.field private 'currentEditor' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

.field private final 'key' Ljava/lang/String;

.field private final 'lengths' [J

.field private 'readable' Z

.field private 'sequenceNumber' J

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.method private <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/key Ljava/lang/String;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I
newarray long
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/lengths [J
return
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/readable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/currentEditor Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/readable Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/currentEditor Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$6(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V
.throws java/io/IOException
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/setLengths([Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$7(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/lengths [J
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/sequenceNumber J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)V
aload 0
lload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/sequenceNumber J
return
.limit locals 3
.limit stack 3
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
.throws java/io/IOException
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "unexpected journal line: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method private setLengths([Ljava/lang/String;)V
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L3 to L4 using L2
aload 1
arraylength
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$8(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I
if_icmpeq L5
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
athrow
L5:
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmplt L3
L1:
return
L3:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/lengths [J
iload 2
aload 1
iload 2
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lastore
L4:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
astore 3
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
athrow
.limit locals 4
.limit stack 4
.end method

.method public getCleanFile(I)Ljava/io/File;
new java/io/File
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
new java/lang/StringBuilder
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/key Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 6
.end method

.method public getDirtyFile(I)Ljava/io/File;
new java/io/File
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$9(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
new java/lang/StringBuilder
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/key Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 6
.end method

.method public getLengths()Ljava/lang/String;
.throws java/io/IOException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry/lengths [J
astore 6
aload 6
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
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
.limit locals 7
.limit stack 3
.end method
