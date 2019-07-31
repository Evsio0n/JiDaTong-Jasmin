.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/bean/SinaGroup
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field public 'mCreateAt' J

.field public 'mCreateAtString' Ljava/lang/String;

.field public 'mDescription' Ljava/lang/String;

.field public 'mId' J

.field public 'mIdString' Ljava/lang/String;

.field public 'mLikeCount' I

.field public 'mMemberCount' I

.field public 'mMode' Ljava/lang/String;

.field public 'mName' Ljava/lang/String;

.field public 'mProfileImgUrl' Ljava/lang/String;

.field public 'mUser' Lcom/product/android/commonInterface/weibo/WbUserInfo;

.field public 'mVisible' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mIdString Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mName Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mMode Ljava/lang/String;
aload 0
iconst_0
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mVisible I
aload 0
iconst_0
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mLikeCount I
aload 0
iconst_0
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mMemberCount I
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mDescription Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mProfileImgUrl Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mCreateAtString Ljava/lang/String;
aload 0
lconst_0
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mCreateAt J
return
.limit locals 1
.limit stack 3
.end method

.method public setCreateString(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mCreateAtString Ljava/lang/String;
aload 0
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mCreateAtString Ljava/lang/String;
ldc "EEE MMM dd HH:mm:ss z yyyy"
invokestatic com/android/u/weibo/sina/utils/SinaUtil/sinaDate2Long(Ljava/lang/String;Ljava/lang/String;)J
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mCreateAt J
return
.limit locals 2
.limit stack 3
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mDescription Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mId J
return
.limit locals 3
.limit stack 3
.end method

.method public setIdString(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mIdString Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLikeCount(I)V
aload 0
iload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mLikeCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setMemberCount(I)V
aload 0
iload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mMemberCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setMode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mMode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProfileImgUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mProfileImgUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser(Lcom/product/android/commonInterface/weibo/WbUserInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
return
.limit locals 2
.limit stack 2
.end method

.method public setVisible(I)V
aload 0
iload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroup/mVisible I
return
.limit locals 2
.limit stack 2
.end method
