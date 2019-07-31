.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/PraisorList
.super java/util/ArrayList
.implements com/common/android/utils/parser/BaseType
.signature "Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/business/bean/Praisor;>;Lcom/common/android/utils/parser/BaseType;"

.field public static final 'ADDPOS_CONTAINS' I = -9


.field public static final 'ADDPOS_GREATER' I = -5


.field public static final 'ADDPOS_LESS' I = -1


.field private static final 'serialVersionUID' J = -3717488647266152725L


.field public 'mTotal' I

.method public <init>()V
aload 0
invokespecial java/util/ArrayList/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAddPosOfItem(Lcom/android/u/weibo/weibo/business/bean/Praisor;)I
iconst_0
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
istore 4
iload 4
ifne L0
L1:
iload 3
ireturn
L0:
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
lstore 5
lload 5
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praisor
getfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
lcmp
ifle L2
iconst_m1
ireturn
L2:
lload 5
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praisor
getfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
lcmp
ifge L3
bipush -5
ireturn
L3:
iconst_0
istore 2
L4:
iload 2
iload 4
if_icmpge L5
iload 2
istore 3
lload 5
aload 0
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praisor
getfield com/android/u/weibo/weibo/business/bean/Praisor/praise_time J
lcmp
ifgt L1
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
bipush -5
ireturn
.limit locals 7
.limit stack 5
.end method

.method public isItemExist(Ljava/lang/Long;)Z
iconst_0
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 4
L0:
iload 3
istore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 1
invokevirtual java/lang/Long/longValue()J
lcmp
ifne L0
iconst_1
istore 2
L1:
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method
