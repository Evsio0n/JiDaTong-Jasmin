.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/ReplyInfoList
.super java/util/ArrayList
.implements com/common/android/utils/parser/BaseType
.signature "Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;>;Lcom/common/android/utils/parser/BaseType;"

.field public static final 'ADDPOS_CONTAINS' I = -9


.field public static final 'ADDPOS_GREATER' I = -5


.field public static final 'ADDPOS_LESS' I = -1


.field public static final 'serialVersionUID' J = 1L


.field public 'TweetID' J

.field public 'mNewCount' I

.field public 'mTotal' I

.method public <init>()V
aload 0
invokespecial java/util/ArrayList/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public deleteById(JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lload 1
lcmp
ifne L0
aload 0
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/remove(Ljava/lang/Object;)Z
pop
L1:
return
.limit locals 5
.limit stack 4
.end method

.method public getAddPosOfItem(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)I
iconst_0
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
istore 4
iload 4
ifne L0
L1:
iload 3
ireturn
L0:
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lstore 5
lload 5
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lcmp
ifle L2
iconst_m1
ireturn
L2:
lload 5
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
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
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
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

.method public getNewCount()I
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfoList/mNewCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTweetIDByTimestamp(J)J
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lload 1
lcmp
ifgt L0
aload 4
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lreturn
L1:
lconst_0
lreturn
.limit locals 5
.limit stack 4
.end method

.method public indexOfTweet(J)I
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lload 1
lcmp
ifne L0
aload 0
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/indexOf(Ljava/lang/Object;)I
ireturn
L1:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public setNewCount(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfoList/mNewCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setTweetID(J)V
aload 0
lload 1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfoList/TweetID J
return
.limit locals 3
.limit stack 3
.end method

.method public subList(II)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 2
istore 3
iload 2
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
if_icmple L0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
istore 3
L0:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 4
aload 4
aload 0
iload 1
iload 3
invokespecial java/util/ArrayList/subList(II)Ljava/util/List;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/addAll(Ljava/util/Collection;)Z
pop
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic subList(II)Ljava/util/List;
aload 0
iload 1
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 3
.limit stack 3
.end method
