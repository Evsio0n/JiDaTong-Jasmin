.bytecode 50.0
.class final synchronized com/nd/rj/common/login/LoginInterfaceManager$2
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Lcom/nd/rj/common/login/entity/OapUser;>;"
.enclosing method com/nd/rj/common/login/LoginInterfaceManager/getAllLoginUserName(Landroid/content/Context;)Ljava/util/List;
.inner class static final inner com/nd/rj/common/login/LoginInterfaceManager$2

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compare(Lcom/nd/rj/common/login/entity/OapUser;Lcom/nd/rj/common/login/entity/OapUser;)I
aload 1
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
ifnull L0
aload 2
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
ifnull L0
invokestatic java/text/Collator/getInstance()Ljava/text/Collator;
aload 2
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
aload 1
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
invokevirtual java/text/Collator/compare(Ljava/lang/String;Ljava/lang/String;)I
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/rj/common/login/entity/OapUser
aload 2
checkcast com/nd/rj/common/login/entity/OapUser
invokevirtual com/nd/rj/common/login/LoginInterfaceManager$2/compare(Lcom/nd/rj/common/login/entity/OapUser;Lcom/nd/rj/common/login/entity/OapUser;)I
ireturn
.limit locals 3
.limit stack 3
.end method
