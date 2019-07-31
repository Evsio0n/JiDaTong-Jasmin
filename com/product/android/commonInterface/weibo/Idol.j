.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/Idol
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.inner class public RelationConst inner com/product/android/commonInterface/weibo/Idol$RelationConst outer com/product/android/commonInterface/weibo/Idol

.field public static final 'ADD' I = 1


.field public static final 'DEL' I = 0


.field public 'change_type' I

.field public 'fans' I

.field public 'id' J

.field public 'idols' I

.field public 'is_following' Z

.field public 'sinaUid' J

.field public 'ts' J

.field public 'user' Lcom/product/android/commonInterface/weibo/WbUserInfo;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getIsFollowing()I
aload 0
getfield com/product/android/commonInterface/weibo/Idol/is_following Z
ifeq L0
iconst_1
ireturn
L0:
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setIsFollowing(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/product/android/commonInterface/weibo/Idol/is_following Z
return
L0:
aload 0
iconst_0
putfield com/product/android/commonInterface/weibo/Idol/is_following Z
return
.limit locals 2
.limit stack 2
.end method
