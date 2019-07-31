.bytecode 50.0
.class final synchronized com/nd/android/u/publicNumber/controller/PublicNumberController$3
.super java/lang/Object
.implements com/nd/android/u/chatUiUtils/SortUtil$ICompare
.enclosing method com/nd/android/u/publicNumber/controller/PublicNumberController/getPspSearchResultXY(Ljava/lang/String;Z)Ljava/util/List;
.inner class static final inner com/nd/android/u/publicNumber/controller/PublicNumberController$3

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 1
checkcast com/product/android/commonInterface/contact/LocalSearchResult
astore 1
aload 2
checkcast com/product/android/commonInterface/contact/LocalSearchResult
astore 2
aload 1
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 2
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getName()Ljava/lang/String;
invokevirtual java/lang/String/length()I
if_icmpge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
