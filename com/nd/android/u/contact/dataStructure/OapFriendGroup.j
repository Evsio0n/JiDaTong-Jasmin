.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapFriendGroup
.super java/lang/Object

.field public static final 'MYFRIENDGROUPID' I = 0


.field public static final 'ONLINEGROUPGID' I = -1


.field public static final 'RECENTGROUPGID' I = -2


.field private 'fgid' I

.field private 'fidList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Long;>;"

.field private 'name' Ljava/lang/String;

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(JILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/uid J
aload 0
iload 3
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
aload 0
aload 4
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/name Ljava/lang/String;
return
.limit locals 5
.limit stack 3
.end method

.method public <init>(JLorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/uid J
aload 0
aload 3
ldc "tagid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
aload 0
aload 3
ldc "tagname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/name Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc "tagid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
aload 0
aload 1
ldc "tagname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/name Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public addFid(J)V
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 3
.limit stack 3
.end method

.method public addFids(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Long;>;)V"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public clearChild()V
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/contact/dataStructure/OapFriendGroup
ifeq L0
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getUid()J
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getUid()J
lcmp
ifne L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getChildSize()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFgid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFidList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Long;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fidList Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setFgid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/fgid I
return
.limit locals 2
.limit stack 2
.end method

.method public setFriendList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/addFid(J)V
goto L1
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapFriendGroup/uid J
return
.limit locals 3
.limit stack 3
.end method
