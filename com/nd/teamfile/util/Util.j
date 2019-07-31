.bytecode 50.0
.class public synchronized com/nd/teamfile/util/Util
.super java/lang/Object

.field private static final 'GB_SIZE' J = 1073741824L


.field private static final 'KB_SIZE' J = 1024L


.field private static final 'MB_SIZE' J = 1048576L


.field public static final 'pathSeparator' Ljava/lang/String;

.field public static final 'pathSeparatorChar' C

.field public static final 'separator' Ljava/lang/String;

.field public static final 'separatorChar' C

.method static <clinit>()V
ldc "file.separator"
ldc "/"
invokestatic java/lang/System/getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iconst_0
invokevirtual java/lang/String/charAt(I)C
putstatic com/nd/teamfile/util/Util/separatorChar C
ldc "path.separator"
ldc ":"
invokestatic java/lang/System/getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iconst_0
invokevirtual java/lang/String/charAt(I)C
putstatic com/nd/teamfile/util/Util/pathSeparatorChar C
getstatic com/nd/teamfile/util/Util/separatorChar C
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
putstatic com/nd/teamfile/util/Util/separator Ljava/lang/String;
getstatic com/nd/teamfile/util/Util/pathSeparatorChar C
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
putstatic com/nd/teamfile/util/Util/pathSeparator Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getFilePathName(Ljava/lang/String;)Ljava/lang/String;
aload 0
getstatic com/nd/teamfile/util/Util/separator Ljava/lang/String;
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
ifge L0
aload 0
areturn
L0:
aload 0
iload 1
iconst_1
iadd
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getSize(J)Ljava/lang/String;
lload 0
ldc2_w 1073741824L
lcmp
iflt L0
ldc "%.1fGB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1.07374182E9F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L1:
aload 2
ldc ".0"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
L0:
lload 0
ldc2_w 1048576L
lcmp
iflt L2
ldc "%.1fMB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1048576.0F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
goto L1
L2:
lload 0
ldc2_w 1024L
lcmp
iflt L3
ldc "%.1fKB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1024.0F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
goto L1
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "byte"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L1
.limit locals 3
.limit stack 6
.end method
