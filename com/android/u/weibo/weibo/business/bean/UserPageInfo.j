.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/UserPageInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -6039636992522135663L


.field public 'fans' I

.field public 'idols' I

.field public 'is_following' Z

.field public 'latest_tid' J

.field public 'latest_topic' Ljava/lang/String;

.field public 'nickName' Ljava/lang/String;

.field public 'topics' I

.field public 'uid' J

.field public 'weibo_uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public setFollowing(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
return
L0:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/is_following Z
return
.limit locals 2
.limit stack 2
.end method
