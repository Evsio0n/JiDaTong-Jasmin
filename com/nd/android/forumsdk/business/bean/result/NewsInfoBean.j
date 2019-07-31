.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/NewsInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -1667034427508670326L


.field private 'cont_type' Ljava/lang/String;

.field private 'content' Ljava/lang/String;

.field private 'cover_img' Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;

.field private 'extra_id' J

.field private 'favorited' I

.field private 'file_info' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"

.field private 'glances' J

.field private 'heat' F

.field private 'post_id' J

.field private 'post_time' J

.field private 'post_type' Ljava/lang/String;

.field private 'praised' I

.field private 'praises' I

.field private 'relate_id' Ljava/lang/String;

.field private 'relate_topic' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean;>;"

.field private 'replys' I

.field private 'source' Ljava/lang/String;

.field private 'summary' Ljava/lang/String;

.field private 'template' I

.field private 'title' Ljava/lang/String;

.field private 'user_info' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
ldc "news"
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_type Ljava/lang/String;
aload 0
ldc "text"
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/cont_type Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/title Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/source Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/summary Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/content Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_id Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getContType()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/cont_type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/content Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/cover_img Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtraId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/extra_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFavorited()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/favorited I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFileInfo()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/file_info Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGlances()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/glances J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getHeat()F
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/heat F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getPostId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPostTime()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPostType()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPraised()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/praised I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPraises()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/praises I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRelateId()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRelateTopic()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_topic Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReplys()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/replys I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSource()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/source Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSummary()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/summary Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTemplate()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/template I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/title Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserInfo()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isTopicNews()Z
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_topic Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_topic Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setContType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/cont_type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/content Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCoverImg(Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/cover_img Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setExtraId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/extra_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setFavorited(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/favorited I
return
.limit locals 2
.limit stack 2
.end method

.method public setFileInfo(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/file_info Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setGlances(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/glances J
return
.limit locals 3
.limit stack 3
.end method

.method public setHeat(F)V
aload 0
fload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/heat F
return
.limit locals 2
.limit stack 2
.end method

.method public setPostId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPostTime(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setPostType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/post_type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPraised(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/praised I
return
.limit locals 2
.limit stack 2
.end method

.method public setPraises(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/praises I
return
.limit locals 2
.limit stack 2
.end method

.method public setRelateId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRelateTopic(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/relate_topic Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setReplys(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/replys I
return
.limit locals 2
.limit stack 2
.end method

.method public setSource(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/source Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSummary(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/summary Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTemplate(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/template I
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/title Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserInfo(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
