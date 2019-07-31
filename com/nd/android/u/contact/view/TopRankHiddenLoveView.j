.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/TopRankHiddenLoveView
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

.method protected final getRankList(IJIIII)Ljava/util/ArrayList;
.signature "(IJIIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
iload 1
lload 2
iload 4
iload 5
iload 6
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getHiddenLoveRank(IJIII)Ljava/util/ArrayList;
astore 8
aload 8
ifnull L0
aload 8
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 9
L1:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/RankInfo
astore 10
aload 10
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 10
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/synGetUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 11
aload 11
ifnull L2
aload 10
aload 11
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
L2:
aload 10
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
goto L1
L0:
aload 8
areturn
.limit locals 12
.limit stack 7
.end method

.method protected final getSendFlowerToMeList(JIILjava/util/ArrayList;Ljava/lang/String;)I
.signature "(JIILjava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;Ljava/lang/String;)I"
iconst_0
ireturn
.limit locals 7
.limit stack 1
.end method
