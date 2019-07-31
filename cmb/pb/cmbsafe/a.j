.bytecode 50.0
.class public synchronized cmb/pb/cmbsafe/a
.super java/lang/Object

.method public static a(Landroid/inputmethodservice/Keyboard;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
invokevirtual android/inputmethodservice/Keyboard/getKeys()Ljava/util/List;
astore 0
aload 0
invokeinterface java/util/List/size()I 0
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
aload 5
invokeinterface java/util/List/size()I 0
istore 3
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 6
iconst_0
istore 1
L2:
iload 1
iload 3
if_icmplt L3
iconst_0
istore 1
iconst_0
istore 2
L4:
iload 1
iload 3
if_icmplt L5
L6:
return
L1:
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
istore 3
iload 3
bipush 48
if_icmplt L7
iload 3
bipush 57
if_icmpgt L7
aload 5
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
iload 1
iconst_1
iadd
istore 1
goto L0
L3:
aload 6
iload 3
invokevirtual java/util/Random/nextInt(I)I
istore 2
aload 5
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
istore 4
aload 5
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
astore 7
aload 5
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
iastore
aload 5
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
putfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iload 4
iastore
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
aload 7
putfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
iload 1
iconst_1
iadd
istore 1
goto L2
L5:
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
istore 4
iload 4
bipush 48
if_icmplt L8
iload 4
bipush 57
if_icmpgt L8
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
iastore
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/inputmethodservice/Keyboard$Key
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
putfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
L8:
iload 2
iconst_1
iadd
istore 2
iload 2
aload 5
invokeinterface java/util/List/size()I 0
if_icmpeq L6
iload 1
iconst_1
iadd
istore 1
goto L4
.limit locals 8
.limit stack 4
.end method
