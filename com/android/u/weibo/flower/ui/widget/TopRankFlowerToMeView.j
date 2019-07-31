.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView
.super com/product/android/ui/widget/TopRankView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/TopRankView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;II)V
aload 0
aload 1
iload 2
iload 3
invokespecial com/product/android/ui/widget/TopRankView/<init>(Landroid/content/Context;II)V
return
.limit locals 4
.limit stack 4
.end method

.method protected getRankList(IJIIII)Ljava/util/ArrayList;
.signature "(IJIIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
aconst_null
areturn
.limit locals 8
.limit stack 1
.end method

.method protected getSendFlowerToMeList(JIILjava/util/ArrayList;Ljava/lang/String;)I
.signature "(JIILjava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;Ljava/lang/String;)I"
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/getContext()Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 1
iload 3
i2l
iload 4
bipush 30
aload 6
aload 5
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerInfoRecv(JJIILjava/lang/String;Ljava/util/ArrayList;)I
istore 3
aload 5
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L0:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/RankInfo
astore 6
aload 6
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L0
aload 6
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/synGetOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
aload 7
ifnull L2
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
L2:
aload 6
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L0
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
goto L0
L1:
iload 3
ireturn
.limit locals 8
.limit stack 9
.end method
