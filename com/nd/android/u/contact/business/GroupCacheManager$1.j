.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/GroupCacheManager$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/business/GroupCacheManager
.inner class inner com/nd/android/u/contact/business/GroupCacheManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/GroupCacheManager;

.method <init>(Lcom/nd/android/u/contact/business/GroupCacheManager;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/GroupCacheManager$1/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 1
aload 1
ldc "extra_user_fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 3
aload 1
ldc "extra_grouptype"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
aload 1
ldc "extra_user"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapGroup
astore 1
aload 1
ifnull L0
new com/nd/android/u/contact/business/GroupCacheManager$GroupItem
dup
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$1/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 3
iload 2
invokespecial com/nd/android/u/contact/business/GroupCacheManager$GroupItem/<init>(Lcom/nd/android/u/contact/business/GroupCacheManager;JI)V
astore 5
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$1/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$300(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/cache/ProfileGroupCallback
astore 6
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$1/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
invokestatic com/nd/android/u/contact/business/GroupCacheManager/access$300(Lcom/nd/android/u/contact/business/GroupCacheManager;)Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 6
ifnull L0
aload 6
aload 1
invokeinterface com/nd/android/u/contact/cache/ProfileGroupCallback/refresh(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
L0:
return
.limit locals 7
.limit stack 6
.end method
