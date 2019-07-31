.bytecode 50.0
.class public synchronized com/product/android/commonInterface/chat/ChatGroup
.super java/lang/Object

.field private 'groupKey' Ljava/lang/String;

.field private 'groupType' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/ChatGroup/groupKey Ljava/lang/String;
aload 0
iload 2
putfield com/product/android/commonInterface/chat/ChatGroup/groupType I
return
.limit locals 3
.limit stack 2
.end method

.method public static getDepartGroupType()I
getstatic com/product/android/business/config/Configuration/ISUAPAPP Z
ifne L0
bipush 10
ireturn
L0:
sipush 5106
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getDiscussionGroupType()I
iconst_2
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getNormalGroupType()I
getstatic com/product/android/business/config/Configuration/ISUAPAPP Z
ifne L0
iconst_0
ireturn
L0:
sipush 4096
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getUntidGroupType()I
bipush 20
ireturn
.limit locals 0
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/chat/ChatGroup
ifeq L0
aload 1
checkcast com/product/android/commonInterface/chat/ChatGroup
astore 1
aload 0
getfield com/product/android/commonInterface/chat/ChatGroup/groupType I
aload 1
getfield com/product/android/commonInterface/chat/ChatGroup/groupType I
if_icmpne L1
aload 0
getfield com/product/android/commonInterface/chat/ChatGroup/groupKey Ljava/lang/String;
ifnull L1
aload 0
getfield com/product/android/commonInterface/chat/ChatGroup/groupKey Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/chat/ChatGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
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
.limit stack 2
.end method

.method public getGroupKey()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/ChatGroup/groupKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupType()I
aload 0
getfield com/product/android/commonInterface/chat/ChatGroup/groupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setGroupKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/ChatGroup/groupKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGroupType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/ChatGroup/groupType I
return
.limit locals 2
.limit stack 2
.end method
