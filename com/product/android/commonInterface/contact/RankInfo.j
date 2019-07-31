.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/RankInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -1963302983509753131L


.field public 'ranking' I

.field public 'sysAvatarId' I

.field public 'total' I

.field public 'uid' J

.field public 'userName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public setRanking(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankInfo/ranking I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankInfo/total I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/RankInfo/uid J
return
.limit locals 3
.limit stack 3
.end method
