.bytecode 50.0
.class final synchronized com/bumptech/glide/disklrucache/Util
.super java/lang/Object

.field static final 'US_ASCII' Ljava/nio/charset/Charset;

.field static final 'UTF_8' Ljava/nio/charset/Charset;

.method static <clinit>()V
ldc "US-ASCII"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
putstatic com/bumptech/glide/disklrucache/Util/US_ASCII Ljava/nio/charset/Charset;
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
putstatic com/bumptech/glide/disklrucache/Util/UTF_8 Ljava/nio/charset/Charset;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
aload 0
ifnull L1
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
aload 0
athrow
L3:
astore 0
return
.limit locals 1
.limit stack 1
.end method

.method static deleteContents(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 3
aload 3
ifnonnull L0
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not a readable directory: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L2
aload 3
iload 1
aaload
astore 0
aload 0
invokevirtual java/io/File/isDirectory()Z
ifeq L3
aload 0
invokestatic com/bumptech/glide/disklrucache/Util/deleteContents(Ljava/io/File;)V
L3:
aload 0
invokevirtual java/io/File/delete()Z
ifne L4
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "failed to delete file: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L4:
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
return
.limit locals 4
.limit stack 4
.end method

.method static readFully(Ljava/io/Reader;)Ljava/lang/String;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
L0:
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
sipush 1024
newarray char
astore 3
L1:
aload 0
aload 3
invokevirtual java/io/Reader/read([C)I
istore 1
L3:
iload 1
iconst_m1
if_icmpeq L6
L4:
aload 2
aload 3
iconst_0
iload 1
invokevirtual java/io/StringWriter/write([CII)V
L5:
goto L1
L2:
astore 2
aload 0
invokevirtual java/io/Reader/close()V
aload 2
athrow
L6:
aload 2
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
astore 2
L7:
aload 0
invokevirtual java/io/Reader/close()V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method
