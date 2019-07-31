.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/QuickReplyList
.super java/util/ArrayList
.signature "Ljava/util/ArrayList<Lcom/nd/android/u/controller/bean/QuickReply;>;"

.field private static final 'serialVersionUID' J = 1L


.method public <init>()V
aload 0
invokespecial java/util/ArrayList/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public exchange(II)Z
aload 0
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
istore 3
iload 3
iload 1
if_icmple L0
iload 3
iload 2
if_icmple L0
iload 1
iload 2
imul
iflt L0
aload 0
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/QuickReply
astore 4
aload 0
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/remove(I)Ljava/lang/Object;
pop
iload 2
iload 3
if_icmplt L1
aload 0
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(Ljava/lang/Object;)Z
pop
L2:
iconst_1
ireturn
L1:
aload 0
iload 2
aload 4
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/add(ILjava/lang/Object;)V
goto L2
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public isExist(Ljava/lang/String;)Z
aload 0
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
iconst_0
ireturn
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/QuickReply
invokevirtual com/nd/android/u/controller/bean/QuickReply/getText()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public resort()V
iconst_0
istore 1
aload 0
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
istore 2
L0:
iload 1
iload 2
if_icmplt L1
return
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/QuickReply
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReply/setOrder(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 2
.end method
