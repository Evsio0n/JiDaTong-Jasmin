.bytecode 50.0
.class synchronized com/nd/android/u/contact/com/OapUserCom$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/com/OapUserCom/searchUserByKey(Ljava/lang/String;)Ljava/util/List;
.inner class inner com/nd/android/u/contact/com/OapUserCom$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/com/OapUserCom;

.field final synthetic 'val$listInsert' Ljava/util/List;

.method <init>(Lcom/nd/android/u/contact/com/OapUserCom;Ljava/util/List;)V
aload 0
aload 1
putfield com/nd/android/u/contact/com/OapUserCom$1/this$0 Lcom/nd/android/u/contact/com/OapUserCom;
aload 0
aload 2
putfield com/nd/android/u/contact/com/OapUserCom$1/val$listInsert Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/com/OapUserCom$1/val$listInsert Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/com/OapUserCom$1/val$listInsert Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
goto L1
L0:
return
.limit locals 3
.limit stack 3
.end method
