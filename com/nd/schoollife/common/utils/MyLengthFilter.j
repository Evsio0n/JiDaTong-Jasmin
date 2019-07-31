.bytecode 50.0
.class public synchronized com/nd/schoollife/common/utils/MyLengthFilter
.super java/lang/Object
.implements android/text/InputFilter

.field private 'mLength' I

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/schoollife/common/utils/MyLengthFilter/mLength I
return
.limit locals 2
.limit stack 2
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
aload 4
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/schoollife/common/utils/MyLengthFilter/mLength I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
istore 3
aload 0
getfield com/nd/schoollife/common/utils/MyLengthFilter/mLength I
iload 3
isub
istore 3
iload 3
ifgt L0
ldc ""
areturn
L0:
aload 1
iload 2
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
iload 3
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_1
faload
f2i
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
areturn
.limit locals 7
.limit stack 5
.end method
