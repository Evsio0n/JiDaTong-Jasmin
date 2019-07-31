.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/SortUtil
.super java/lang/Object
.inner class public static abstract interface ICompare inner com/nd/android/u/chatUiUtils/SortUtil$ICompare outer com/nd/android/u/chatUiUtils/SortUtil

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static binarySort([Ljava/lang/Object;IILcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
iload 1
iload 2
iadd
iconst_2
idiv
istore 9
iload 2
iload 1
isub
iconst_1
if_icmple L0
aload 0
iload 1
iload 9
aload 3
invokestatic com/nd/android/u/chatUiUtils/SortUtil/binarySort([Ljava/lang/Object;IILcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
aload 0
iload 9
iconst_1
iadd
iload 2
aload 3
invokestatic com/nd/android/u/chatUiUtils/SortUtil/binarySort([Ljava/lang/Object;IILcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
L0:
iload 2
iload 1
isub
iconst_1
iadd
anewarray java/lang/Object
astore 10
iload 1
istore 5
iload 9
iconst_1
iadd
istore 4
iconst_0
istore 6
L1:
iload 5
iload 9
if_icmpgt L2
iload 4
iload 2
if_icmpgt L2
aload 0
iload 5
aaload
astore 11
aload 0
iload 4
aaload
astore 12
aload 3
aload 11
aload 12
invokeinterface com/nd/android/u/chatUiUtils/SortUtil$ICompare/compare(Ljava/lang/Object;Ljava/lang/Object;)Z 2
ifeq L3
iload 6
iconst_1
iadd
istore 8
aload 10
iload 6
aload 11
aastore
iload 5
iconst_1
iadd
istore 5
iload 4
istore 7
iload 8
istore 4
L4:
iload 4
istore 6
iload 7
istore 4
goto L1
L3:
iload 6
iconst_1
iadd
istore 7
aload 10
iload 6
aload 12
aastore
iload 4
iconst_1
iadd
istore 6
iload 7
istore 4
iload 6
istore 7
goto L4
L5:
iload 5
iload 9
if_icmpgt L6
aload 10
iload 6
aload 0
iload 5
aaload
aastore
iload 5
iconst_1
iadd
istore 5
iload 6
iconst_1
iadd
istore 6
goto L5
L7:
iload 4
iload 2
if_icmpgt L8
aload 10
iload 6
aload 0
iload 4
aaload
aastore
iload 4
iconst_1
iadd
istore 4
iload 6
iconst_1
iadd
istore 6
goto L7
L8:
iconst_0
istore 2
L9:
iload 2
iload 6
if_icmpge L10
aload 0
iload 2
iload 1
iadd
aload 10
iload 2
aaload
aastore
iload 2
iconst_1
iadd
istore 2
goto L9
L10:
return
L6:
goto L7
L2:
goto L5
.limit locals 13
.limit stack 4
.end method

.method public static sort(Ljava/util/List;Lcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
aload 0
invokeinterface java/util/List/size()I 0
ifgt L0
L1:
return
L0:
aload 0
invokeinterface java/util/List/toArray()[Ljava/lang/Object; 0
astore 4
aload 4
iconst_0
aload 4
arraylength
iconst_1
isub
aload 1
invokestatic com/nd/android/u/chatUiUtils/SortUtil/binarySort([Ljava/lang/Object;IILcom/nd/android/u/chatUiUtils/SortUtil$ICompare;)V
aload 0
invokeinterface java/util/List/clear()V 0
aload 4
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 0
aload 4
iload 2
aaload
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 5
.limit stack 4
.end method
