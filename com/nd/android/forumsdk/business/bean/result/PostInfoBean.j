.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/PostInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -2855834044831284802L


.field private 'article' Ljava/lang/String;

.field private 'at_uids' Ljava/lang/String;

.field private 'category' Ljava/lang/String;

.field private 'city' Ljava/lang/String;

.field private 'content' Ljava/lang/String;

.field private 'data' Lcom/nd/android/forumsdk/business/bean/structure/PostExtraDataBean;

.field private 'favorited' I

.field private 'file_info' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"

.field private 'floor' I

.field private 'from_string' Ljava/lang/String;

.field private 'glances' J

.field private 'heat' F

.field private 'latitude' D

.field private 'location' Ljava/lang/String;

.field private 'longitude' D

.field private 'longtype' Ljava/lang/String;

.field private 'more_content' I

.field private 'post_info' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'post_time' J

.field private 'praised' I

.field private 'praises' J

.field private 'praisor' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;"

.field private 'reply_info' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"

.field private 'replys' J

.field private 'root_tid' J

.field private 'scope' Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;

.field private 'tid' J

.field private 'title' Ljava/lang/String;

.field private 'unit_id' J

.field private 'user_info' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/content Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/article Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/title Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/category Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/longtype Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/location Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/city Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/from_string Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/at_uids Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getArticle()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/article Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAt_uids()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/at_uids Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/category Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCity()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/city Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/content Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Lcom/nd/android/forumsdk/business/bean/structure/PostExtraDataBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/data Lcom/nd/android/forumsdk/business/bean/structure/PostExtraDataBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFavorited()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/favorited I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFile_info()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/file_info Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFloor()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/floor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFrom_string()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/from_string Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGlances()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/glances J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getHeat()F
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/heat F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getLatitude()D
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/latitude D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getLocation()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/location Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLongitude()D
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/longitude D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getLongtype()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/longtype Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMore_content()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/more_content I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_info()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/post_info Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_time()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/post_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPraised()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praised I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPraises()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praises J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPraisor()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praisor Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReply_info()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/reply_info Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReplys()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/replys J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getRoot_tid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/root_tid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/scope Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/tid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTitle()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/title Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnit_id()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/unit_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setArticle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/article Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAt_uids(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/at_uids Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/category Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/city Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/content Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setData(Lcom/nd/android/forumsdk/business/bean/structure/PostExtraDataBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/data Lcom/nd/android/forumsdk/business/bean/structure/PostExtraDataBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setFavorited(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/favorited I
return
.limit locals 2
.limit stack 2
.end method

.method public setFile_info(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/file_info Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setFloor(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/floor I
return
.limit locals 2
.limit stack 2
.end method

.method public setFrom_string(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/from_string Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGlances(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/glances J
return
.limit locals 3
.limit stack 3
.end method

.method public setHeat(F)V
aload 0
fload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/heat F
return
.limit locals 2
.limit stack 2
.end method

.method public setLatitude(D)V
aload 0
dload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/latitude D
return
.limit locals 3
.limit stack 3
.end method

.method public setLocation(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/location Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLongitude(D)V
aload 0
dload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/longitude D
return
.limit locals 3
.limit stack 3
.end method

.method public setLongtype(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/longtype Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMore_content(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/more_content I
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_info(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/post_info Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_time(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/post_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setPraised(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praised I
return
.limit locals 2
.limit stack 2
.end method

.method public setPraises(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praises J
return
.limit locals 3
.limit stack 3
.end method

.method public setPraisor(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/praisor Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setReply_info(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/reply_info Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setReplys(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/replys J
return
.limit locals 3
.limit stack 3
.end method

.method public setRoot_tid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/root_tid J
return
.limit locals 3
.limit stack 3
.end method

.method public setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/scope Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setTid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/tid J
return
.limit locals 3
.limit stack 3
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/title Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnit_id(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/unit_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PostInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
