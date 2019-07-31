.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/Praise
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field public 'id' J

.field public 'mIsRead' Z

.field public 'mTopic' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.field public 'mUser' Lcom/product/android/commonInterface/weibo/WbUserInfo;

.field public 'praise_time' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/business/bean/Praise/mIsRead Z
return
.limit locals 1
.limit stack 2
.end method
