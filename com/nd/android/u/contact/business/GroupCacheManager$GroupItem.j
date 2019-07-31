.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/GroupCacheManager$GroupItem
.super java/lang/Object
.inner class GroupItem inner com/nd/android/u/contact/business/GroupCacheManager$GroupItem outer com/nd/android/u/contact/business/GroupCacheManager

.field 'gid' J

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/GroupCacheManager;

.field 'type' I

.method public <init>(Lcom/nd/android/u/contact/business/GroupCacheManager;JI)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/this$0 Lcom/nd/android/u/contact/business/GroupCacheManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 2
putfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/gid J
aload 0
iload 4
putfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
return
.limit locals 5
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/contact/business/GroupCacheManager$GroupItem
ifeq L0
aload 1
checkcast com/nd/android/u/contact/business/GroupCacheManager$GroupItem
astore 1
aload 1
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/gid J
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/gid J
lcmp
ifne L1
aload 1
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
if_icmpne L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
invokespecial java/lang/Object/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/contact/business/GroupCacheManager$GroupItem/type I
ireturn
.limit locals 1
.limit stack 1
.end method
