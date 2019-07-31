.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence
.super java/lang/Object
.implements java/lang/CharSequence
.implements android/text/GetChars
.inner class private static PasswordCharSequence inner com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence outer com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod

.field private 'mSource' Ljava/lang/CharSequence;

.method public <init>(Ljava/lang/CharSequence;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
return
.limit locals 2
.limit stack 2
.end method

.method public charAt(I)C
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
instanceof android/text/Spanned
ifeq L0
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
checkcast android/text/Spanned
astore 5
aload 5
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/access$000()Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
istore 2
aload 5
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/access$000()Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
istore 3
iload 1
iload 2
if_icmplt L1
iload 1
iload 3
if_icmpge L1
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
iload 1
invokeinterface java/lang/CharSequence/charAt(I)C 1
ireturn
L1:
aload 5
iconst_0
aload 5
invokeinterface android/text/Spanned/length()I 0
ldc com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible
invokeinterface android/text/Spanned/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;
astore 6
iconst_0
istore 2
L2:
iload 2
aload 6
arraylength
if_icmpge L0
aload 5
aload 6
iload 2
aaload
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/access$100(Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;)Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
iflt L3
aload 5
aload 6
iload 2
aaload
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
istore 3
aload 5
aload 6
iload 2
aaload
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
istore 4
iload 1
iload 3
if_icmplt L3
iload 1
iload 4
if_icmpge L3
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
iload 1
invokeinterface java/lang/CharSequence/charAt(I)C 1
ireturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
L0:
sipush 9829
ireturn
.limit locals 7
.limit stack 4
.end method

.method public getChars(II[CI)V
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
iload 1
iload 2
aload 3
iload 4
invokestatic android/text/TextUtils/getChars(Ljava/lang/CharSequence;II[CI)V
iconst_m1
istore 7
iconst_m1
istore 5
iconst_0
istore 6
aconst_null
astore 13
aconst_null
astore 12
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
instanceof android/text/Spanned
ifeq L0
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
checkcast android/text/Spanned
astore 16
aload 16
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/access$000()Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
istore 9
aload 16
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/access$000()Ljava/lang/Object;
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
istore 10
aload 16
iconst_0
aload 16
invokeinterface android/text/Spanned/length()I 0
ldc com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible
invokeinterface android/text/Spanned/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;
astore 17
aload 17
arraylength
istore 11
iload 11
newarray int
astore 14
iload 11
newarray int
astore 15
iconst_0
istore 8
L1:
iload 10
istore 5
aload 15
astore 12
iload 11
istore 6
iload 9
istore 7
aload 14
astore 13
iload 8
iload 11
if_icmpge L0
aload 16
aload 17
iload 8
aaload
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible/access$100(Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;)Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod;
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
iflt L2
aload 14
iload 8
aload 16
aload 17
iload 8
aaload
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
iastore
aload 15
iload 8
aload 16
aload 17
iload 8
aaload
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
iastore
L2:
iload 8
iconst_1
iadd
istore 8
goto L1
L0:
iload 1
istore 8
L3:
iload 8
iload 2
if_icmpge L4
iload 8
iload 7
if_icmplt L5
iload 8
iload 5
if_icmplt L6
L5:
iconst_0
istore 11
iconst_0
istore 9
L7:
iload 11
istore 10
iload 9
iload 6
if_icmpge L8
iload 8
aload 13
iload 9
iaload
if_icmplt L9
iload 8
aload 12
iload 9
iaload
if_icmpge L9
iconst_1
istore 10
L8:
iload 10
ifne L6
aload 3
iload 8
iload 1
isub
iload 4
iadd
sipush 9829
castore
L6:
iload 8
iconst_1
iadd
istore 8
goto L3
L9:
iload 9
iconst_1
iadd
istore 9
goto L7
L4:
return
.limit locals 18
.limit stack 5
.end method

.method public length()I
aload 0
getfield com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/mSource Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/length()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
iload 2
iload 1
isub
newarray char
astore 3
aload 0
iload 1
iload 2
aload 3
iconst_0
invokevirtual com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/getChars(II[CI)V
new java/lang/String
dup
aload 3
invokespecial java/lang/String/<init>([C)V
areturn
.limit locals 4
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
aload 0
iconst_0
aload 0
invokevirtual com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/length()I
invokevirtual com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/subSequence(II)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 3
.end method
