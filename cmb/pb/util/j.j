.bytecode 50.0
.class public synchronized cmb/pb/util/j
.super java/lang/Object

.field private static 'a' Ljava/lang/String;

.method static <clinit>()V
ldc "WebViewFunc"
putstatic cmb/pb/util/j/a Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Hashtable;
new java/util/Hashtable
dup
invokespecial java/util/Hashtable/<init>()V
astore 4
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
ldc "?"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 3
astore 0
iload 1
ifle L1
aload 3
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L1:
aload 0
ldc "?"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L2
aload 0
astore 3
aload 0
ldc "&"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
L2:
aload 0
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
L3:
aload 3
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
iconst_0
istore 1
L4:
iload 1
aload 3
arraylength
if_icmplt L5
L0:
aload 4
areturn
L5:
aload 3
iload 1
aload 3
iload 1
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
aastore
aload 3
iload 1
aaload
ldc "="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 2
ifgt L6
L7:
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
aload 3
iload 1
aaload
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 5
ldc ""
astore 0
iload 2
aload 3
iload 1
aaload
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpgt L8
aload 3
iload 1
aaload
iload 2
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L8:
aload 4
aload 5
aload 0
invokevirtual java/util/Hashtable/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L7
.limit locals 6
.limit stack 4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 3
aload 0
ifnonnull L0
L1:
aload 3
areturn
L0:
aload 0
invokestatic cmb/pb/util/j/c(Ljava/lang/String;)Z
ifeq L1
aload 0
ldc "http://CMBLS/"
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
aload 3
ldc "?"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 3
astore 0
iload 1
ifle L2
aload 3
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L2:
aload 0
ldc "/"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 2
aload 0
astore 3
iload 1
ifle L1
aload 0
astore 3
iload 2
iload 1
if_icmpgt L1
aload 0
iload 2
iconst_1
iadd
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static c(Ljava/lang/String;)Z
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "http://CMBLS/"
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
